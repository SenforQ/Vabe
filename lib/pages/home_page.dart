import 'package:flutter/material.dart';
import '../utils/assets_manager.dart';
import 'ai_companion_page.dart';
import '../services/coin_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 首页
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasCheckedWelcomeBonus = false;

  @override
  void initState() {
    super.initState();
    _checkAndGiveWelcomeBonus();
  }

  /// 检查并赠送欢迎蚌壳币
  Future<void> _checkAndGiveWelcomeBonus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final hasReceivedBonus = prefs.getBool('has_received_welcome_bonus') ?? false;
      
      if (!hasReceivedBonus) {
        // 用户还没有获得过欢迎奖励，赠送200蚌壳币
        final success = await CoinService.addCoins(CoinService.welcomeBonus);
        
        if (success) {
          // 标记已经获得过欢迎奖励
          await prefs.setBool('has_received_welcome_bonus', true);
          
          // 显示欢迎奖励对话框
          if (mounted) {
            _showWelcomeBonusDialog();
          }
        }
      }
      
      setState(() {
        _hasCheckedWelcomeBonus = true;
      });
    } catch (e) {
      debugPrint('Error checking welcome bonus: $e');
    }
  }

  /// 显示欢迎奖励对话框
  void _showWelcomeBonusDialog() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        showDialog(
          context: context,
          barrierDismissible: false, // 用户必须点击按钮才能关闭
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
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFD700),
                          Color(0xFFFFA500),
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Welcome!',
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
                children: [
                  const Text(
                    'Welcome to Vabe! As a new user, you\'ve received:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD700).withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFFFD700),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.monetization_on,
                          color: Color(0xFFFFD700),
                          size: 32,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '${CoinService.welcomeBonus} Coins',
                                                      style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFFFD700),
                            ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Use these coins to unlock AI companions or purchase more coins for additional features.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
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
                      'Get Started!',
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home_bg_20250822.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // 背景图片覆盖整个屏幕
            const SizedBox.expand(),
            
            // AI图标 - 左上角（可点击）
            Positioned(
              left: 16,
              top: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AICompanionPage(),
                    ),
                  );
                },
                child: Image.asset(
                  AssetsManager.homeAi,
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Icon(
                        Icons.smart_toy,
                        size: 45,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
            
            // 加载指示器（可选，在检查欢迎奖励时显示）
            if (!_hasCheckedWelcomeBonus)
              const Positioned.fill(
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
