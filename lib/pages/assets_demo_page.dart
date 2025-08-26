import 'package:flutter/material.dart';
import '../utils/assets_manager.dart';

/// 资源演示页面
/// 展示如何使用AssetsManager管理应用资源
class AssetsDemoPage extends StatefulWidget {
  const AssetsDemoPage({super.key});

  @override
  State<AssetsDemoPage> createState() => _AssetsDemoPageState();
}

class _AssetsDemoPageState extends State<AssetsDemoPage> {
  Map<String, dynamic> _config = {};
  Map<String, dynamic> _language = {};
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadResources();
  }

  Future<void> _loadResources() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final config = await AssetsManager.loadConfig();
      final language = await AssetsManager.loadLanguage('zh_CN');
      
      setState(() {
        _config = config;
        _language = language;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('加载资源失败: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('资源管理演示'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('应用配置'),
                  _buildConfigCard(),
                  const SizedBox(height: 20),
                  _buildSectionTitle('语言资源'),
                  _buildLanguageCard(),
                  const SizedBox(height: 20),
                  _buildSectionTitle('资源路径示例'),
                  _buildPathsCard(),
                  const SizedBox(height: 20),
                  _buildSectionTitle('使用方法'),
                  _buildUsageCard(),
                ],
              ),
            ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildConfigCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('应用名称: ${_config['app_name'] ?? 'N/A'}'),
            Text('版本: ${_config['version'] ?? 'N/A'}'),
            Text('主题色: ${_config['theme']?['primary_color'] ?? 'N/A'}'),
            Text('API超时: ${_config['api']?['timeout'] ?? 'N/A'}ms'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('欢迎: ${_language['welcome'] ?? 'N/A'}'),
            Text('首页: ${_language['home'] ?? 'N/A'}'),
            Text('设置: ${_language['settings'] ?? 'N/A'}'),
            Text('关于: ${_language['about'] ?? 'N/A'}'),
          ],
        ),
      ),
    );
  }

  Widget _buildPathsCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('图片路径: ${AssetsManager.getImagePath('logo.png')}'),
            Text('图标路径: ${AssetsManager.getIconPath('home.png')}'),
            Text('字体路径: ${AssetsManager.getFontPath('Vabe-Regular.ttf')}'),
            Text('数据路径: ${AssetsManager.getDataPath('config.json')}'),
          ],
        ),
      ),
    );
  }

  Widget _buildUsageCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('在代码中使用:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('• 图片: AssetsManager.getImagePath("logo.png")'),
            const Text('• 图标: AssetsManager.getIconPath("home.png")'),
            const Text('• 字体: AssetsManager.getFontPath("Vabe-Regular.ttf")'),
            const Text('• 数据: AssetsManager.getDataPath("config.json")'),
            const SizedBox(height: 16),
            const Text('• 检查资源: AssetsManager.assetExists(path)'),
            const Text('• 加载配置: AssetsManager.loadConfig()'),
            const Text('• 加载语言: AssetsManager.loadLanguage("zh_CN")'),
          ],
        ),
      ),
    );
  }
}
