import 'package:flutter/material.dart';
import '../utils/assets_manager.dart';
import 'ai_companion_page.dart';

/// 首页
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          ],
        ),
      ),
    );
  }
}
