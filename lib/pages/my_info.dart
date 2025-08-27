import 'dart:io';
import 'package:flutter/material.dart';
import '../utils/assets_manager.dart';
import '../utils/image_manager.dart';
import '../utils/user_preferences.dart';
import 'edit_profile_page.dart';
import 'about_us_page.dart';
import 'blacklist_page.dart';
import 'privacy_policy_page.dart';
import 'terms_of_service_page.dart';
import 'clamshell_coin_page.dart';
import 'vip_subscription_page.dart';


/// 我的信息页面
class MyInfoPage extends StatefulWidget {
  const MyInfoPage({super.key});

  @override
  State<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  String? _userAvatarPath;
  String _userNickname = UserPreferences.defaultNickname;
  String _userSignature = UserPreferences.defaultSignature;
  String _userEmail = '';
  String _userBirthday = '';
  String _userGender = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  /// 加载用户数据
  Future<void> _loadUserData() async {
    setState(() => _isLoading = true);
    
    try {
      final userProfile = await UserPreferences.getUserProfile();
      
      setState(() {
        _userAvatarPath = userProfile['avatarPath'];
        _userNickname = userProfile['nickname'] ?? UserPreferences.defaultNickname;
        _userSignature = userProfile['signature'] ?? UserPreferences.defaultSignature;
        _userEmail = userProfile['email'] ?? '';
        _userBirthday = userProfile['birthday'] ?? '';
        _userGender = userProfile['gender'] ?? '';
      });
    } catch (e) {
      debugPrint('Error loading user data: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  /// 刷新用户数据
  Future<void> _refreshUserData() async {
    await _loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  // 顶部背景和用户信息区域
                  _buildTopSection(context),
                  // VIP订阅按钮
                  _buildVipSubscriptionButton(context),
                  
                  // 功能列表
                  _buildFunctionList(context),
                  // 为悬浮TabBar预留空间
                  const SizedBox(height: 80),
                ],
              ),
            ),
    );
  }

  /// 构建顶部区域（背景图片和用户信息）
  Widget _buildTopSection(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final backgroundHeight = screenWidth * 0.8;
    
    return Column(
      children: [
        // 背景图片区域
        SizedBox(
          width: screenWidth,
          height: backgroundHeight,
          child: Image.asset(
            'assets/mine_bg_20250822.png',
            width: screenWidth,
            height: backgroundHeight,
            fit: BoxFit.cover,
          ),
        ),
        
        // 头像和用户信息区域 - 放在同一层级
        Container(
          width: MediaQuery.of(context).size.width, // 宽度为屏幕宽度
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 用户头像 - 左边距0px，因为Container已经有16px的左边距
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: _buildUserAvatar(),
                  ),
                ),
              ),
              
              const SizedBox(height: 0), // 头像与用户信息之间的间距
              
              // 用户昵称和性别图标
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: Row(
                  children: [
                    // 用户昵称
                    Text(
                      _userNickname,
                      style: const TextStyle(
                        fontSize: 20, // 20pt字体
                        fontWeight: FontWeight.w800, // 85 Bold (FontWeight.w800最接近85 Bold)
                        color: Color(0xFF333333), // #333333颜色
                      ),
                    ),
                    
                    // 性别图标（如果有选择性别则显示）
                    if (_userGender.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      _buildGenderIcon(),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 12),
              
              // 个性签名
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: Text(
                  _userSignature,
                  style: const TextStyle(
                    fontSize: 14, // 14pt字体
                    fontWeight: FontWeight.normal, // Regular字重
                    color: Color(0xFF666666), // #666666颜色
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 构建用户头像
  Widget _buildUserAvatar() {
    if (_userAvatarPath != null && _userAvatarPath!.isNotEmpty) {
      return FutureBuilder<String>(
        future: ImageManager.getFullImagePath(_userAvatarPath!),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final fullPath = snapshot.data!;
            final file = File(fullPath);
            
            return Image.file(
              file,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                debugPrint('Error loading user avatar: $error');
                return _buildDefaultAvatar();
              },
            );
          }
          
          return _buildDefaultAvatar();
        },
      );
    }
    
    // 显示默认头像
    return Image.asset(
      AssetsManager.userDefaultAvatar,
      width: 80,
      height: 80,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return _buildDefaultAvatar();
      },
    );
  }

  /// 构建默认头像
  Widget _buildDefaultAvatar() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        size: 40,
        color: Colors.blue,
      ),
    );
  }

  /// 构建性别图标
  Widget _buildGenderIcon() {
    Color backgroundColor;
    IconData iconData;
    
    switch (_userGender.toLowerCase()) {
      case 'male':
        backgroundColor = const Color(0xFF02C9F6); // 男性背景颜色 #02C9F6
        iconData = Icons.male;
        break;
      case 'female':
        backgroundColor = const Color(0xFFFF7CB8); // 女性背景颜色 #FF7CB8
        iconData = Icons.female;
        break;
      default:
        backgroundColor = Colors.grey; // 其他性别使用灰色
        iconData = Icons.person;
    }
    
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        size: 14,
        color: Colors.white, // 图标为白色
      ),
    );
  }

    /// 构建VIP订阅按钮
  Widget _buildVipSubscriptionButton(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final scaleFactor = screenHeight / 812.0; // 基于812高度的缩放系数
    
    return Transform.translate(
      offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VipSubscriptionPage(),
                ),
              );
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: screenWidth - 32, // 屏幕宽 - 32
              height: 59 * scaleFactor, // 高度按系数缩放
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.withValues(alpha: 0.1),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/my_vip_sub_20250827.png',
                width: screenWidth - 32,
                height: 59 * scaleFactor,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: screenWidth - 32,
                    height: 59 * scaleFactor,
                    decoration: BoxDecoration(
                      color: Colors.purple.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'VIP Subscription',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 构建功能列表
  Widget _buildFunctionList(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          children: [

                        // Clamshell Coin
            _buildFunctionItem(
              iconPath: 'assets/mine_wallet_20250822.png',
              title: 'Clamshell Coin',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ClamshellCoinPage(),
                  ),
                );
              },
            ),

            // Edit information
            _buildFunctionItem(
              iconPath: 'assets/mine_editino_20250822.png',
              title: 'Edit information',
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfilePage(),
                  ),
                );
                
                if (result == true) {
                  await _refreshUserData();
                }
              },
            ),
            
            // Privacy Policy
            _buildFunctionItem(
              iconPath: 'assets/mine_privacy_20250822.png',
              title: 'Privacy Policy',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyPage(),
                  ),
                );
              },
            ),
            
            // Terms of Service
            _buildFunctionItem(
              iconPath: 'assets/mine_aboutus_20250822.png', // 暂时使用aboutus图标
              title: 'Terms of Service',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsOfServicePage(),
                  ),
                );
              },
            ),
            
            // Black list
            _buildFunctionItem(
              iconPath: 'assets/mine_blacklist_20250822.png',
              title: 'Black list',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BlacklistPage(),
                  ),
                );
              },
            ),
            
            // About us
            _buildFunctionItem(
              iconPath: 'assets/mine_aboutus_20250822.png',
              title: 'About us',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// 构建功能项
  Widget _buildFunctionItem({
    required String iconPath,
    required String title,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey.withValues(alpha: 0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // 图标
                Image.asset(
                  iconPath,
                  width: 24,
                  height: 24,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(
                        Icons.image,
                        size: 16,
                        color: Colors.blue,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 16),
                // 标题
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
                // 箭头
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey.withValues(alpha: 0.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
