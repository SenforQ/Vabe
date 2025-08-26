import 'package:flutter/material.dart';
import '../utils/assets_manager.dart';
import 'home_page.dart';
import 'discover_page.dart';
import 'my_info.dart';
import 'history_record_page.dart';

/// 主TabBar页面
/// 包含四个主要标签页和悬浮的底部导航栏
class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  int _currentIndex = 0;
  
  @override
  void initState() {
    super.initState();
    _checkAssets();
  }

  /// 检查资源文件是否存在
  void _checkAssets() {
    // Asset checking logic removed to reduce console output
  }

  // 页面列表
  final List<Widget> _pages = [
    const HomePage(),
    const DiscoverPage(),
    const HistoryRecordPage(),
    const MyInfoPage(),
  ];

  // TabBar配置
  final List<TabBarItem> _tabItems = [
    TabBarItem(
      normalIcon: AssetsManager.tab1Normal,
      selectedIcon: AssetsManager.tab1Selected,
      label: '首页',
    ),
    TabBarItem(
      normalIcon: AssetsManager.tab2Normal,
      selectedIcon: AssetsManager.tab2Selected,
      label: '发现',
    ),
    TabBarItem(
      normalIcon: AssetsManager.tab3Normal,
      selectedIcon: AssetsManager.tab3Selected,
      label: '历史',
    ),
    TabBarItem(
      normalIcon: AssetsManager.tab4Normal,
      selectedIcon: AssetsManager.tab4Selected,
      label: '我的',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          // 主页面内容
          _pages[_currentIndex],
          
          // 悬浮的TabBar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildFloatingTabBar(),
          ),
        ],
      ),
    );
  }

  /// 构建悬浮的TabBar
  Widget _buildFloatingTabBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        bottom: MediaQuery.of(context).padding.bottom + 12, // 安全边距 + 12px
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          _tabItems.length,
          (index) => _buildTabItem(index),
        ),
      ),
    );
  }

  /// 构建单个Tab项
  Widget _buildTabItem(int index) {
    final item = _tabItems[index];
    final isSelected = _currentIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: 60, // 固定宽度
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              isSelected ? item.selectedIcon : item.normalIcon,
              width: 60,
              height: 81, // 所有图标都是81像素高度
              fit: BoxFit.contain, // 图片内容自适应
              errorBuilder: (context, error, stackTrace) {
                // 如果图片加载失败，显示占位符图标
                return Icon(
                  _getPlaceholderIcon(index),
                  size: 81, // 占位符图标也是81像素
                  color: isSelected ? Colors.blue : Colors.grey,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// 获取占位符图标
  IconData _getPlaceholderIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.explore;
      case 2:
        return Icons.history;
      case 3:
        return Icons.settings;
      default:
        return Icons.home;
    }
  }
}

/// TabBar项数据模型
class TabBarItem {
  final String normalIcon;
  final String selectedIcon;
  final String label;

  const TabBarItem({
    required this.normalIcon,
    required this.selectedIcon,
    required this.label,
  });
}
