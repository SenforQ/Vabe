import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import '../services/vip_service.dart';

// VIP 产品常量
class VipProduct {
  final String productId;
  final String period;
  final double price;
  final String priceText;

  VipProduct({
    required this.productId,
    required this.period,
    required this.price,
    required this.priceText,
  });
}

final List<VipProduct> kVipProducts = [
  VipProduct(productId: 'VabeWeekVIP', period: 'Per week', price: 12.99, priceText: '\$12.99'),
  VipProduct(productId: 'VabeMonthVIP', period: 'Per month', price: 49.99, priceText: '\$49.99'),
];

/// VIP订阅页面
class VipSubscriptionPage extends StatefulWidget {
  const VipSubscriptionPage({super.key});

  @override
  State<VipSubscriptionPage> createState() => _VipSubscriptionPageState();
}

class _VipSubscriptionPageState extends State<VipSubscriptionPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int _selectedSubscriptionIndex = 0; // 选中的订阅选项索引
  
  // VIP内购相关状态
  bool _isVipActive = false;
  final Map<String, bool> _loadingStates = {}; // 为每个商品单独管理loading状态
  final Map<String, Timer> _timeoutTimers = {}; // 为每个商品管理超时定时器
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};
  int _retryCount = 0;
  static const int maxRetries = 3;
  static const int timeoutDuration = 30; // 30秒超时

  @override
  void initState() {
    super.initState();
    _loadVipStatus();
    _checkConnectivityAndInit();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _subscription?.cancel();
    // 取消所有超时定时器
    for (final timer in _timeoutTimers.values) {
      timer.cancel();
    }
    _timeoutTimers.clear();
    super.dispose();
  }

  // 安全地调用setState的辅助方法
  void _safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }

  // 处理超时
  void _handleTimeout(String productId) {
    _safeSetState(() {
      _loadingStates[productId] = false;
    });
    
    // 取消定时器
    _timeoutTimers[productId]?.cancel();
    _timeoutTimers.remove(productId);
    
    // 显示超时提示
    try {
      _showToast('Payment timeout. Please try again.');
    } catch (e) {
      debugPrint('Failed to show timeout toast: $e');
    }
  }

  Future<void> _checkConnectivityAndInit() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (!mounted) return;
    
    if (connectivityResult == ConnectivityResult.none) {
      _showToast('No internet connection. Please check your network settings.');
      return;
    }
    await _initIAP();
  }

  Future<void> _initIAP() async {
    try {
      final available = await _inAppPurchase.isAvailable();
      if (!mounted) return;
      
      _safeSetState(() {
        _isAvailable = available;
      });
      
      if (!available) {
        if (mounted) {
          _showToast('In-App Purchase not available');
        }
        return;
      }
      
      final Set<String> kIds = kVipProducts.map((e) => e.productId).toSet();
      final response = await _inAppPurchase.queryProductDetails(kIds);
      
      if (!mounted) return;
      
      if (response.error != null) {
        if (_retryCount < maxRetries) {
          _retryCount++;
          await Future.delayed(const Duration(seconds: 2));
          if (mounted) {
            await _initIAP();
          }
          return;
        }
        _showToast('Failed to load products: ${response.error!.message}');
      }
      
      if (mounted) {
        _safeSetState(() {
          _products = {for (var p in response.productDetails) p.id: p};
        });
      }
      
      if (mounted) {
        _subscription = _inAppPurchase.purchaseStream.listen(
          _onPurchaseUpdate,
          onDone: () {
            if (mounted) {
              _subscription?.cancel();
            }
          },
          onError: (e) {
            if (mounted) {
              _showToast('Purchase error: ${e.toString()}');
            }
          },
        );
      }
    } catch (e) {
      if (!mounted) return;
      
      if (_retryCount < maxRetries) {
        _retryCount++;
        await Future.delayed(const Duration(seconds: 2));
        if (mounted) {
          await _initIAP();
        }
      } else {
        if (mounted) {
          _showToast('Failed to initialize in-app purchases. Please try again later.');
        }
      }
    }
  }

  Future<void> _loadVipStatus() async {
    try {
      final isActive = await VipService.isVipActive();
      final isExpired = await VipService.isVipExpired();
      
      if (!mounted) return;
      
      _safeSetState(() {
        _isVipActive = isActive && !isExpired;
      });
      
      // 如果VIP已过期，自动停用
      if (isActive && isExpired) {
        await VipService.deactivateVip();
        if (mounted) {
          _safeSetState(() {
            _isVipActive = false;
          });
        }
      }
    } catch (e) {
      print('VipSubscriptionPage - Error loading VIP status: $e');
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (!mounted) return;
      
      if (purchase.status == PurchaseStatus.purchased || purchase.status == PurchaseStatus.restored) {
        await _inAppPurchase.completePurchase(purchase);
        
        // 使用VIP服务激活VIP
        try {
          await VipService.activateVip(
            productId: purchase.productID,
            purchaseDate: DateTime.now().toIso8601String(),
          );
          
          if (mounted) {
            _safeSetState(() {
              _isVipActive = true;
            });
            
            // 使用 try-catch 包装 toast 调用
            try {
              _showToast('VIP subscription activated successfully!');
            } catch (e) {
              debugPrint('Failed to show success toast: $e');
            }
            
            // 使用更安全的方式处理导航，并传递VIP状态更新
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted && Navigator.of(context).canPop()) {
                try {
                  Navigator.of(context).pop({
                    'vip_activated': true,
                    'product_id': purchase.productID,
                    'purchase_date': DateTime.now().toIso8601String(),
                  });
                } catch (e) {
                  debugPrint('Failed to navigate back: $e');
                }
              }
            });
          }
        } catch (e) {
          print('VipSubscriptionPage - Error activating VIP: $e');
          if (mounted) {
            _showToast('Failed to activate VIP. Please try again.');
          }
        }
      } else if (purchase.status == PurchaseStatus.error) {
        if (mounted) {
          try {
            _showToast('Purchase failed: ${purchase.error?.message ?? ''}');
          } catch (e) {
            debugPrint('Failed to show error toast: $e');
          }
        }
      } else if (purchase.status == PurchaseStatus.canceled) {
        if (mounted) {
          try {
            _showToast('Purchase canceled.');
          } catch (e) {
            debugPrint('Failed to show cancel toast: $e');
          }
        }
      }
      
      // 清除所有商品的loading状态和超时定时器
      if (mounted) {
        _safeSetState(() {
          _loadingStates.clear();
        });
        
        // 取消所有超时定时器
        for (final timer in _timeoutTimers.values) {
          timer.cancel();
        }
        _timeoutTimers.clear();
      }
    }
  }

  Future<void> _restorePurchases() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    try {
      await _inAppPurchase.restorePurchases();
      if (mounted) {
        _showToast('Restoring purchases...');
      }
      // 恢复购买的结果会在 _onPurchaseUpdate 中处理
    } catch (e) {
      if (mounted) {
        _showToast('Restore failed: ${e.toString()}');
      }
    }
  }

  Future<void> _handleConfirmPurchase() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    // 根据选择确定要购买的产品
    final selectedProduct = _selectedSubscriptionIndex == 0 ? kVipProducts[0] : kVipProducts[1];
    
    if (!mounted) return;
    
    _safeSetState(() {
      _loadingStates[selectedProduct.productId] = true; // 设置当前商品的loading状态
    });
    
    // 设置30秒超时定时器
    _timeoutTimers[selectedProduct.productId] = Timer(
      Duration(seconds: timeoutDuration),
      () => _handleTimeout(selectedProduct.productId),
    );
    
    try {
      // 尝试获取对应的产品详情
      final product = _products[selectedProduct.productId];
      
      // 如果没有找到对应的产品，使用第一个可用的产品进行购买
      ProductDetails? productToUse = product;
      if (productToUse == null && _products.isNotEmpty) {
        productToUse = _products.values.first;
      }
      
      if (productToUse == null) {
        throw Exception('No products available for purchase');
      }
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: productToUse);
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      // 取消超时定时器
      _timeoutTimers[selectedProduct.productId]?.cancel();
      _timeoutTimers.remove(selectedProduct.productId);
      
      if (mounted) {
        _showToast('Purchase failed: ${e.toString()}');
        
        // 在mounted检查后调用setState
        _safeSetState(() {
          _loadingStates[selectedProduct.productId] = false; // 清除当前商品的loading状态
        });
      }
    }
  }

  void _showToast(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: const Color(0xFF4A1B4A),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF00FDC9), // #00FDC9
              Color(0xFF0099F9), // #0099F9
            ],
            transform: GradientRotation(0.5), // x为0.5
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 顶部导航栏
              _buildTopBar(),
              
              // 内容区域
              Expanded(
                child: Column(
                  children: [
                    // 宝箱区域
                    const SizedBox(height: 16),
                    Image.asset(
                      'assets/my_vip_chest_20250827.png',
                      width: 100,
                      height: 140,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.card_giftcard,
                            size: 50,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // 页面指示器
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: _currentPage == index 
                                ? Colors.white 
                                : Colors.white.withValues(alpha: 0.5),
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // 滚轮内容区域
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (index) {
                          if (mounted) {
                            _safeSetState(() {
                              _currentPage = index;
                            });
                          }
                        },
                        children: [
                          _buildPage1(),
                          _buildPage2(),
                          _buildPage3(),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // 订阅选项
                    _buildSubscriptionOptions(),
                    
                    const SizedBox(height: 12),
                    
                    // 确认按钮
                    _buildConfirmButton(),
                    
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 构建顶部导航栏
  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // 返回按钮
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  /// 构建第一个页面 - 无限制修改个人信息
  Widget _buildPage1() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Unlimited Profile Editing',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 16),
          
          const Text(
            'VIPs can enjoy changing avatars, names and other benefits',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// 构建第二个页面 - 无广告内容
  Widget _buildPage2() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Ad-Free Experience',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 16),
          
          const Text(
            'VIPs can enjoy popups without any advertisements',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// 构建第三个页面 - 查阅个人资料
  Widget _buildPage3() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'View Personal Profiles',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 16),
          
          const Text(
            'VIPs can enjoy unlimited access to view others\' profiles',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// 构建订阅选项
  Widget _buildSubscriptionOptions() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final scaleFactor = screenHeight / 812.0;
    
    return Column(
      children: [
        // 第一个订阅选项
        GestureDetector(
          onTap: () {
            if (mounted) {
              _safeSetState(() {
                _selectedSubscriptionIndex = 0;
              });
            }
          },
          child: Container(
            width: screenWidth - 32,
            height: 105 * scaleFactor,
            decoration: BoxDecoration(
              color: _selectedSubscriptionIndex == 0 
                  ? Colors.white
                  : const Color(0xFFFFFFFF).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _selectedSubscriptionIndex == 0 
                    ? const Color(0xFF51FF00).withValues(alpha: 1.0)
                    : const Color(0xFF51FF00).withValues(alpha: 0.0),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                    Text(
                      kVipProducts[0].period,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      kVipProducts[0].priceText,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.check_circle,
                    color: _selectedSubscriptionIndex == 0 
                        ? const Color(0xFF51FF00)
                        : Colors.grey.withValues(alpha: 0.3),
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        
        const SizedBox(height: 16),
        
        // 第二个订阅选项
        GestureDetector(
          onTap: () {
            if (mounted) {
              _safeSetState(() {
                _selectedSubscriptionIndex = 1;
              });
            }
          },
          child: Container(
            width: screenWidth - 32,
            height: 105 * scaleFactor,
            decoration: BoxDecoration(
              color: _selectedSubscriptionIndex == 1 
                  ? Colors.white
                  : const Color(0xFFFFFFFF).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _selectedSubscriptionIndex == 1 
                    ? const Color(0xFF51FF00).withValues(alpha: 1.0)
                    : const Color(0xFF51FF00).withValues(alpha: 0.0),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                    Text(
                      kVipProducts[1].period,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      kVipProducts[1].priceText,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.check_circle,
                    color: _selectedSubscriptionIndex == 1 
                        ? const Color(0xFF51FF00)
                        : Colors.grey.withValues(alpha: 0.3),
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// 构建确认按钮
  Widget _buildConfirmButton() {
    return Column(
      children: [
        // Confirm按钮
        GestureDetector(
          onTap: _isVipActive ? null : _handleConfirmPurchase,
          child: Image.asset(
            'assets/btn_vip_confirm_20250827.png',
            width: 180,
            height: 52,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 180,
                height: 52,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF4CAF50),
                      Color(0xFF66BB6A),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    _isVipActive ? 'VIP Active' : 'Confirm',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        
        const SizedBox(height: 10),
        
        // Restore按钮
        GestureDetector(
          onTap: _restorePurchases,
          child: Image.asset(
            'assets/btn_vip_restore_20250827.png',
            width: 180,
            height: 52,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 180,
                height: 52,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF2196F3),
                      Color(0xFF42A5F5),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Restore',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
