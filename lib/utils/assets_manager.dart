import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

/// 资源管理工具类
/// 用于管理应用中的静态资源文件
class AssetsManager {
  static const String _assetsPath = 'assets';

  /// 获取资源路径
  static String getAssetPath(String fileName) {
    return '$_assetsPath/$fileName';
  }

  /// 检查资源文件是否存在
  static Future<bool> assetExists(String path) async {
    try {
      await rootBundle.load(path);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// TabBar图标路径
  static const String tab1Normal = 'assets/tab_1_n_20250821.png';
  static const String tab1Selected = 'assets/tab_1_s_20250821.png';
  static const String tab2Normal = 'assets/tab_2_n_20250821.png';
  static const String tab2Selected = 'assets/tab_2_s_20250821.png';
  static const String tab3Normal = 'assets/tab_3_n_20250821.png';
  static const String tab3Selected = 'assets/tab_3_s_20250821.png';
  static const String tab4Normal = 'assets/tab_4_n_20250821.png';
  static const String tab4Selected = 'assets/tab_4_s_20250821.png';

  /// 用户头像路径
  static const String userDefaultAvatar = 'assets/user_default_20250821.png';
  
  /// 编辑资料页面相关
  static const String meEditOk = 'assets/me_edit_ok_20250822.png';
  
  /// 我的页面相关
  static const String mineBg = 'assets/mine_bg_20250822.png';
  static const String mineEditino = 'assets/mine_editino_20250822.png';
  static const String minePrivacy = 'assets/mine_privacy_20250822.png';
  static const String mineBlacklist = 'assets/mine_blacklist_20250822.png';
  static const String mineAboutus = 'assets/mine_aboutus_20250822.png';
  
  /// 首页相关
  static const String homeBg = 'assets/home_bg_20250822.png';
  static const String homeAi = 'assets/home_ai_20250822.png';
  
  /// About us页面相关
  static const String appDefault = 'assets/app_default_20250822.png';
  
  /// AI详情页面相关
  static const String aiDetailBg = 'assets/ai_detail_bg_20250825.png';
  static const String aiDetailText = 'assets/ai_detail_text_20250825.png';
  static const String btnAiChat = 'assets/btn_ai_chat_20250825.png';
  
  /// 聊天页面相关
  static const String chatMenu = 'assets/chat_menu_20250825.png';
  static const String chatVideo = 'assets/chat_video_20250825.png';
  static const String chatSendMessage = 'assets/chat_sendMessage_20250825.png';

  /// 加载JSON配置文件
  static Future<Map<String, dynamic>> loadConfig() async {
    try {
      final jsonString = await rootBundle.loadString(getAssetPath('config.json'));
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      debugPrint('Error loading config: $e');
      return {};
    }
  }

  /// 加载语言文件
  static Future<Map<String, dynamic>> loadLanguage(String languageCode) async {
    try {
      String path;
      switch (languageCode) {
        case 'zh_CN':
          path = getAssetPath('zh_CN.json');
          break;
        case 'en_US':
          path = getAssetPath('en_US.json');
          break;
        default:
          path = getAssetPath('en_US.json');
      }
      
      final jsonString = await rootBundle.loadString(path);
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      debugPrint('Error loading language: $e');
      return {};
    }
  }

  /// 获取图片路径
  static String getImagePath(String imageName) {
    return getAssetPath('images/$imageName');
  }

  /// 获取图标路径
  static String getIconPath(String iconName) {
    return getAssetPath('icons/$iconName');
  }

  /// 获取字体路径
  static String getFontPath(String fontName) {
    return getAssetPath('fonts/$fontName');
  }

  /// 获取数据文件路径
  static String getDataPath(String fileName) {
    return getAssetPath('data/$fileName');
  }
}
