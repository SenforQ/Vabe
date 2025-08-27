import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import '../services/coin_service.dart';

// 金币产品常量
class CoinProduct {
  final String productId;
  final int coins;
  final double price;
  final String priceText;

  CoinProduct({
    required this.productId,
    required this.coins,
    required this.price,
    required this.priceText,
  });
}

final List<CoinProduct> kCoinProducts = [
  CoinProduct(productId: 'Vabe', coins: 32, price: 0.99, priceText: '\$0.99'),
  CoinProduct(productId: 'Vabe2', coins: 96, price: 2.99, priceText: '\$2.99'),
  CoinProduct(productId: 'Vabe5', coins: 189, price: 5.99, priceText: '\$5.99'),
  CoinProduct(productId: 'Vabe9', coins: 359, price: 9.99, priceText: '\$9.99'),
  CoinProduct(productId: 'Vabe19', coins: 729, price: 19.99, priceText: '\$19.99'),
  CoinProduct(productId: 'Vabe49', coins: 1869, price: 49.99, priceText: '\$49.99'),
  CoinProduct(productId: 'Vabe99', coins: 3799, price: 99.99, priceText: '\$99.99'),
  CoinProduct(productId: 'Vabe159', coins: 5999, price: 159.99, priceText: '\$159.99'),
  CoinProduct(productId: 'Vabe239', coins: 9059, price: 239.99, priceText: '\$239.99'),
];

/// Clamshell Coin页面
class ClamshellCoinPage extends StatefulWidget {
  const ClamshellCoinPage({super.key});

  @override
  State<ClamshellCoinPage> createState() => _ClamshellCoinPageState();
}

class _ClamshellCoinPageState extends State<ClamshellCoinPage> {
  int _currentCoins = 0;
  bool _isPurchasing = false;
  final Map<String, Timer> _timeoutTimers = {};
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};
  int _retryCount = 0;
  static const int maxRetries = 3;
  static const int timeoutDuration = 30;

  @override
  void initState() {
    super.initState();
    _loadCoins();
    _checkConnectivityAndInit();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    for (final timer in _timeoutTimers.values) {
      timer.cancel();
    }
    _timeoutTimers.clear();
    super.dispose();
  }

  Future<void> _loadCoins() async {
    final coins = await CoinService.getCurrentCoins();
    setState(() {
      _currentCoins = coins;
    });
  }

  Future<void> _checkConnectivityAndInit() async {
    final connectivityResult = await Connectivity().checkConnectivity();
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
      setState(() {
        _isAvailable = available;
      });
      if (!available) {
        if (mounted) {
          _showToast('In-App Purchase not available');
        }
        return;
      }
      final Set<String> kIds = kCoinProducts.map((e) => e.productId).toSet();
      final response = await _inAppPurchase.queryProductDetails(kIds);
      if (response.error != null) {
        if (_retryCount < maxRetries) {
          _retryCount++;
          await Future.delayed(const Duration(seconds: 2));
          await _initIAP();
          return;
        }
        _showToast('Failed to load products: ${response.error!.message}');
      }
      setState(() {
        _products = {for (var p in response.productDetails) p.id: p};
      });
      _subscription = _inAppPurchase.purchaseStream.listen(
        _onPurchaseUpdate,
        onDone: () {
          _subscription?.cancel();
        },
        onError: (e) {
          if (mounted) {
            _showToast('Purchase error: ${e.toString()}');
          }
        },
      );
    } catch (e) {
      if (_retryCount < maxRetries) {
        _retryCount++;
        await Future.delayed(const Duration(seconds: 2));
        await _initIAP();
      } else {
        if (mounted) {
          _showToast('Failed to initialize in-app purchases. Please try again later.');
        }
      }
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased || purchase.status == PurchaseStatus.restored) {
        await _inAppPurchase.completePurchase(purchase);
        
        final product = kCoinProducts.firstWhere(
          (p) => p.productId == purchase.productID,
          orElse: () => CoinProduct(productId: '', coins: 0, price: 0, priceText: ''),
        );
        
        if (product.coins > 0) {
          final success = await CoinService.addCoins(product.coins);
          
          if (success && mounted) {
            await _loadCoins();
            try {
              _showToast('Successfully purchased ${product.coins} coins!');
            } catch (e) {
              debugPrint('Failed to show success toast: $e');
            }
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
      
      if (mounted) {
        setState(() {
          _isPurchasing = false;
        });
        
        for (final timer in _timeoutTimers.values) {
          timer.cancel();
        }
        _timeoutTimers.clear();
      }
    }
  }

  void _handlePurchaseTimeout() {
    if (mounted) {
      setState(() {
        _isPurchasing = false;
      });
      
      _timeoutTimers['purchase']?.cancel();
      _timeoutTimers.remove('purchase');
      
      try {
        _showToast('Payment timeout. Please try again.');
      } catch (e) {
        debugPrint('Failed to show timeout toast: $e');
      }
    }
  }

  Future<void> _handleConfirmPurchase(CoinProduct product) async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    setState(() {
      _isPurchasing = true;
    });
    
    _timeoutTimers['purchase'] = Timer(
      Duration(seconds: timeoutDuration),
      () => _handlePurchaseTimeout(),
    );
    
    try {
      final productDetails = _products[product.productId];
      
      ProductDetails? productToUse = productDetails;
      if (productToUse == null && _products.isNotEmpty) {
        productToUse = _products.values.first;
      }
      
      if (productToUse == null) {
        throw Exception('No products available for purchase');
      }
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: productToUse);
      await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      _timeoutTimers['purchase']?.cancel();
      _timeoutTimers.remove('purchase');
      
      if (mounted) {
        _showToast('Purchase failed: ${e.toString()}');
      }
      setState(() {
        _isPurchasing = false;
      });
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

  void _onProductSelected(CoinProduct product) {
    // 显示确认对话框
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              const Icon(
                Icons.monetization_on,
                color: Color(0xFFFFD700),
                size: 24,
              ),
              const SizedBox(width: 8),
              const Text(
                'Confirm Purchase',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to purchase ${product.coins} coins for ${product.priceText}?',
            style: const TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _handleConfirmPurchase(product);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF8A65),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Purchase',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showCoinExplanation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD700),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Clamshell Coin Guide',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExplanationItem(
                '1',
                'Each device receives 200 Clamshell Coins as a welcome bonus',
                Icons.card_giftcard,
              ),
              const SizedBox(height: 16),
              _buildExplanationItem(
                '2',
                'Unlock AI companion characters in the home page for 200 Clamshell Coins each',
                Icons.chat_bubble_outline,
              ),
              const SizedBox(height: 16),
              _buildExplanationItem(
                '3',
                'Each message sent to AI companions costs 30 Clamshell Coins',
                Icons.message,
              ),
            ],
          ),
          actions: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD700),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Got it',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildExplanationItem(String number, String text, IconData icon) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: const Color(0xFFFFD700),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFFFFD700),
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            // 背景图片
            Positioned.fill(
              child: Image.asset(
                'assets/wallet_bg_20250827.png',
                width: screenWidth,
                height: screenHeight,
                fit: BoxFit.cover, // 图片内容自适应放大
              ),
            ),
            
            // 顶部导航栏
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: Row(
                  children: [
                    // 返回按钮
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    
                    const Spacer(),
                    
                    // 页面标题
                    const Text(
                      'Clamshell Coin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    
                    const Spacer(),
                    
                    // 说明按钮
                    GestureDetector(
                      onTap: () => _showCoinExplanation(),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.info_outline,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // 余额胶囊按钮
            Positioned(
              top: 304 * (MediaQuery.of(context).size.height / 812),
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 54 * (MediaQuery.of(context).size.height / 812),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Center(
                    child: Text(
                      '$_currentCoins COINS',
                      style: const TextStyle(
                        color: Color(0xFF14405B),
                        fontSize: 28,
                        fontWeight: FontWeight.w600, // Semibold
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            // CollectionView
            Positioned(
              top: 390 * (MediaQuery.of(context).size.height / 812),
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                                          // 第一行 - 3个item
                    Row(
                      children: [
                        _buildCollectionItem(kCoinProducts[0]),
                        SizedBox(width: 9),
                        _buildCollectionItem(kCoinProducts[1]),
                        SizedBox(width: 9),
                        _buildCollectionItem(kCoinProducts[2]),
                      ],
                    ),
                    
                    SizedBox(height: 16),
                    
                    // 第二行 - 3个item
                    Row(
                      children: [
                        _buildCollectionItem(kCoinProducts[3]),
                        SizedBox(width: 9),
                        _buildCollectionItem(kCoinProducts[4]),
                        SizedBox(width: 9),
                        _buildCollectionItem(kCoinProducts[5]),
                      ],
                    ),
                    
                    SizedBox(height: 16),
                    
                    // 第三行 - 3个item
                    Row(
                      children: [
                        _buildCollectionItem(kCoinProducts[6]),
                        SizedBox(width: 9),
                        _buildCollectionItem(kCoinProducts[7]),
                        SizedBox(width: 9),
                        _buildCollectionItem(kCoinProducts[8]),
                      ],
                    ),
                      
                      // 底部额外空间，确保最后一行item完全可见
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCollectionItem(CoinProduct product) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 32 - 18) / 3.0;
    final itemHeight = 143 * (MediaQuery.of(context).size.height / 812);
    
    return Container(
      width: itemWidth,
      height: itemHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // 顶部间距
          SizedBox(height: 16 * (MediaQuery.of(context).size.height / 812)),
          
          // Icon
          Image.asset(
            'assets/wallet_coin_20250827.png',
            width: 32 * (MediaQuery.of(context).size.height / 812),
            height: 32 * (MediaQuery.of(context).size.height / 812),
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 32 * (MediaQuery.of(context).size.height / 812),
                height: 32 * (MediaQuery.of(context).size.height / 812),
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  Icons.monetization_on,
                  size: 20 * (MediaQuery.of(context).size.height / 812),
                  color: Colors.blue,
                ),
              );
            },
          ),
          
          const SizedBox(height: 8),
          
          // 蚌壳币数量
          Text(
            '${product.coins}',
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          SizedBox(height: 4 * (MediaQuery.of(context).size.height / 812)),
          
          // 购买按钮 - 渐变色胶囊
          GestureDetector(
            onTap: _isPurchasing ? null : () => _onProductSelected(product),
            child: Container(
              width: double.infinity,
              height: 32 * (MediaQuery.of(context).size.height / 812),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF40F0DC), // #40F0DC
                    Color(0xFF0097FA), // #0097FA
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: _isPurchasing
                    ? SizedBox(
                        width: 16 * (MediaQuery.of(context).size.height / 812),
                        height: 16 * (MediaQuery.of(context).size.height / 812),
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : Text(
                        product.priceText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
