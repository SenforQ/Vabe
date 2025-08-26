import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'terms_of_service_page.dart';
import 'privacy_policy_page.dart';
import 'main_tab_page.dart';

/// 欢迎页面
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _isAgreementChecked = false;

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
                'assets/welcome_bg_20250826.png',
                width: screenWidth,
                height: screenHeight,
                fit: BoxFit.cover, // 图片自适应放大
              ),
            ),
            
            SizedBox(),

            // 内容区域
            Positioned.fill(
              child: Column(
                children: [
                  // 顶部空白区域
                  const Spacer(flex: 2),
                  
                  // 进入按钮
                  Center(
                    child: GestureDetector(
                      onTap: _isAgreementChecked ? _enterApp : null,
                      child: Image.asset(
                        'assets/welcome_enter_20250826.png',
                        width: 295,
                        height: 52,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 295,
                            height: 52,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: _isAgreementChecked
                                    ? [
                                        const Color(0xFF007AFF),
                                        const Color(0xFF0056CC),
                                      ]
                                    : [
                                        Colors.grey.withValues(alpha: 0.5),
                                        Colors.grey.withValues(alpha: 0.3),
                                      ],
                              ),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: const Center(
                              child: Text(
                                'Enter APP',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // 协议勾选区域 - 现在在底部
                  Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 勾选框
                        Checkbox(
                          value: _isAgreementChecked,
                          onChanged: (value) {
                            setState(() {
                              _isAgreementChecked = value ?? false;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                        ),
                        
                        const SizedBox(width: 22),
                        
                        // 协议文字
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              children: [
                                const TextSpan(text: 'I have read and agree '),
                                WidgetSpan(
                                  child: GestureDetector(
                                    onTap: () => _navigateToTermsOfService(),
                                    child: const Text(
                                      'Terms of Service',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                        decorationThickness: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const TextSpan(text: ' and '),
                                WidgetSpan(
                                  child: GestureDetector(
                                    onTap: () => _navigateToPrivacyPolicy(),
                                    child: const Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                        decorationThickness: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const TextSpan(text: ' and '),
                                WidgetSpan(
                                  child: GestureDetector(
                                    onTap: () => _openELUA(),
                                    child: const Text(
                                      'ELUA',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                        decorationThickness: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 进入应用
  void _enterApp() {
    if (_isAgreementChecked) {
      // 这里可以导航到主页面或者设置一个标志表示用户已同意协议
      // 暂时显示一个提示
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Welcome to Vortex!'),
          backgroundColor: Colors.green,
        ),
      );
      
      // TODO: 导航到主页面
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainTabPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please agree to the terms first'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  /// 跳转到服务条款页面
  void _navigateToTermsOfService() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TermsOfServicePage(),
      ),
    );
  }

  /// 跳转到隐私政策页面
  void _navigateToPrivacyPolicy() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PrivacyPolicyPage(),
      ),
    );
  }

  /// 打开ELUA链接
  Future<void> _openELUA() async {
    const url = 'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/';
    
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Could not open ELUA link'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error opening ELUA: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
