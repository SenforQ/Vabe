import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../utils/assets_manager.dart';

/// About us页面
class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  String _appVersion = '';
  String _appBuildNumber = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadAppInfo();
  }

  /// 加载应用信息
  Future<void> _loadAppInfo() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      setState(() {
        _appVersion = packageInfo.version;
        _appBuildNumber = packageInfo.buildNumber;
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading app info: $e');
      setState(() {
        _appVersion = '1.0.0';
        _appBuildNumber = '1';
        _isLoading = false;
      });
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
              Color(0xFF00FACA), // #00FACA
              Color(0xFF009AF9), // #009AF9
            ],
            stops: [0.0, 1.0], // y0到y1
            transform: GradientRotation(0.5), // x为0.5
          ),
        ),
        child: SafeArea(
          child: _isLoading
              ? const Center(child: CircularProgressIndicator(color: Colors.white))
              : Column(
                  children: [
                    // 顶部返回按钮
                    _buildTopBar(),
                    
                    // 主要内容区域
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // App Logo
                            _buildAppLogo(),
                            
                            const SizedBox(height: 32),
                            
                            // App名称
                            _buildAppName(),
                            
                            const SizedBox(height: 16),
                            
                            // App版本号
                            _buildAppVersion(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  /// 构建顶部返回按钮
  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
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

  /// 构建App Logo
  Widget _buildAppLogo() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60), // 圆角为60
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
              child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            AssetsManager.appDefault,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Icon(
                Icons.apps,
                size: 60,
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }

  /// 构建App名称
  Widget _buildAppName() {
    return const Text(
      'Vabe',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    );
  }

  /// 构建App版本号
  Widget _buildAppVersion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Version $_appVersion ($_appBuildNumber)',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
