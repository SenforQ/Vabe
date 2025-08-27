import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/assets_manager.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'chat_page.dart';
import '../utils/blacklist_manager.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Added for local storage
import '../services/coin_service.dart'; // Added for coin service

/// AI伴侣详情页面
class AICompanionPage extends StatefulWidget {
  const AICompanionPage({super.key});

  @override
  State<AICompanionPage> createState() => _AICompanionPageState();
}

class _AICompanionPageState extends State<AICompanionPage> {
  Map<String, dynamic>? _firstCharacter;
  List<Map<String, dynamic>> _aiCompanions = [];
  int _selectedCharacterIndex = 0; // 当前选中的角色索引
  bool _isLoading = true;
  Map<String, bool> _unlockedCharacters = {}; // 角色解锁状态

  @override
  void initState() {
    super.initState();
    _loadFirstCharacter();
    _loadUnlockedStatus();
  }

  /// 加载角色数据
  Future<void> _loadFirstCharacter() async {
    try {
      final jsonString = await rootBundle.loadString('assets/VabeSystemCosPeople.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      
      if (jsonData.isNotEmpty) {
        setState(() {
          _aiCompanions = jsonData.cast<Map<String, dynamic>>();
          _firstCharacter = _aiCompanions[0]; // 设置第一个角色（中间）为当前选中
          _selectedCharacterIndex = 0; // 设置选中索引为0
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('Error loading character data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 加载角色解锁状态
  Future<void> _loadUnlockedStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final unlockedData = prefs.getString('unlocked_characters') ?? '{}';
      final Map<String, dynamic> unlockedMap = json.decode(unlockedData);
      
      setState(() {
        _unlockedCharacters = unlockedMap.map((key, value) => MapEntry(key, value as bool));
      });
    } catch (e) {
      debugPrint('Error loading unlocked status: $e');
    }
  }

  /// 保存角色解锁状态
  Future<void> _saveUnlockedStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final unlockedData = json.encode(_unlockedCharacters);
      await prefs.setString('unlocked_characters', unlockedData);
    } catch (e) {
      debugPrint('Error saving unlocked status: $e');
    }
  }

  /// 检查角色是否已解锁
  bool _isCharacterUnlocked(String characterName) {
    return _unlockedCharacters[characterName] ?? false;
  }

  /// 解锁角色
  Future<bool> _unlockCharacter(String characterName) async {
    try {
      // 检查用户是否有足够的蚌壳币
      final currentCoins = await CoinService.getCurrentCoins();
      if (currentCoins < 200) {
        _showUnlockDialog('Insufficient Coins', 'You need 200 Clamshell Coins to unlock this character. Current balance: $currentCoins coins.');
        return false;
      }

      // 扣除200蚌壳币
      final success = await CoinService.spendCoins(200);
      if (success) {
        // 更新解锁状态
        setState(() {
          _unlockedCharacters[characterName] = true;
        });
        
        // 保存到本地存储
        await _saveUnlockedStatus();
        
        _showUnlockDialog('Character Unlocked!', 'You have successfully unlocked $characterName!');
        return true;
      } else {
        _showUnlockDialog('Unlock Failed', 'Failed to deduct coins. Please try again.');
        return false;
      }
    } catch (e) {
      debugPrint('Error unlocking character: $e');
      _showUnlockDialog('Error', 'An error occurred while unlocking the character.');
      return false;
    }
  }

  /// 显示解锁相关对话框
  void _showUnlockDialog(String title, String message) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF666666),
          ),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(
                color: Color(0xFF007AFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 显示解锁确认对话框
  void _showUnlockConfirmationDialog(String characterName) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Row(
          children: [
            const Icon(
              Icons.lock_open,
              color: Color(0xFFFFD700),
              size: 24,
            ),
            const SizedBox(width: 8),
            const Text(
              'Unlock Character',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF333333),
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unlock $characterName to start chatting?',
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF666666),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFD700).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFFFD700),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  const Text(
                    'Cost: 200 Clamshell Coins',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFD700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Color(0xFF8E8E93),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoDialogAction(
            onPressed: () async {
              Navigator.pop(context);
              await _unlockCharacter(characterName);
            },
            child: const Text(
              'Unlock',
              style: TextStyle(
                color: Color(0xFF007AFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 切换选中的角色
  void _switchCharacter(int index) {
    if (index >= 0 && index < _aiCompanions.length) {
      setState(() {
        _selectedCharacterIndex = index;
        _firstCharacter = _aiCompanions[index];
      });
      debugPrint('Switched to character: ${_aiCompanions[index]['VabeUserName']}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsManager.aiDetailBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 顶部返回按钮
              _buildTopBar(),
              
              // 顶部角色图片
              _buildTopCharacterImage(),
              
              // 角色选择区域
              _buildCharacterSelectionArea(),
              
              // 底部文本图片
              const Spacer(),
              
              // 底部文本图片 - 距离底部12px
              _buildBottomTextImage(),
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

  /// 构建顶部角色图片
  Widget _buildTopCharacterImage() {
    // 添加调试信息
    debugPrint('_isLoading: $_isLoading');
    debugPrint('_firstCharacter: $_firstCharacter');
    
    if (_isLoading) {
      return Container(
        margin: const EdgeInsets.only(top: 0),
        height: 100,
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      );
    }
    
    if (_firstCharacter == null) {
      return Container(
        margin: const EdgeInsets.only(top: 0),
        height: 100,
        child: const Center(
          child: Text(
            'No character data',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    final screenHeight = MediaQuery.of(context).size.height;
    final scaleFactor = screenHeight / 812.0; // 基于812高度的缩放系数
    
    final imagePath = 'assets/${_firstCharacter!['VabeHeaderIcon']}';
    debugPrint('Loading image: $imagePath');
    
    return Stack(
      children: [
        // 人物图片
        Container(
          margin: const EdgeInsets.only(top: 0),
          child: Image.asset(
            imagePath,
            height: 370 * scaleFactor, // 高度按系数缩放
            width: null, // 宽度自适应
            fit: BoxFit.fitHeight, // 保持宽高比，高度固定
            errorBuilder: (context, error, stackTrace) {
              debugPrint('Image error: $error');
              return Container(
                height: 370 * scaleFactor,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.white,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Image not found',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        
                    // 聊天按钮 - 位于人物图片底部32px位置
            Positioned(
              bottom: 32,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () async {
                    if (_firstCharacter != null) {
                      final characterName = _firstCharacter!['VabeUserName'] ?? 'Unknown';
                      final isUnlocked = _isCharacterUnlocked(characterName);
                      
                      if (isUnlocked) {
                        // 角色已解锁，检查黑名单状态
                        final canChat = await BlacklistManager.canChatWithUser(characterName);
                        
                        if (canChat) {
                          if (mounted) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatPage(
                                  character: _firstCharacter!,
                                ),
                              ),
                            );
                          }
                        } else {
                          // 检查具体是被屏蔽还是被拉黑
                          final isBlocked = await BlacklistManager.isUserBlocked(characterName);
                          final isMuted = await BlacklistManager.isUserMuted(characterName);
                          
                          String message;
                          if (isBlocked) {
                            message = '$characterName has been blocked. You cannot chat with this user.';
                          } else if (isMuted) {
                            message = '$characterName has been muted. You cannot chat with this user.';
                          } else {
                            message = 'You cannot chat with this user.';
                          }
                          
                          // 显示提示对话框
                          if (mounted) {
                            showCupertinoDialog(
                              context: context,
                              builder: (BuildContext context) => CupertinoAlertDialog(
                                title: const Text(
                                  'Access Denied',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                                content: Text(
                                  message,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                                actions: <CupertinoDialogAction>[
                                  CupertinoDialogAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'OK',
                                      style: TextStyle(
                                        color: Color(0xFF007AFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                      } else {
                        // 角色未解锁，显示解锁确认对话框
                        _showUnlockConfirmationDialog(characterName);
                      }
                    }
                  },
                  child: Image.asset(
                    _isCharacterUnlocked(_firstCharacter!['VabeUserName'] ?? 'Unknown')
                        ? 'assets/btn_ai_chat_s_20250825.png' // 解锁状态
                        : 'assets/btn_ai_chat_n_20250825.png', // 普通状态
                    height: 60 * scaleFactor, // 按钮高度按系数缩放
                    width: null, // 宽度自适应
                    fit: BoxFit.fitHeight, // 保持宽高比
                    errorBuilder: (context, error, stackTrace) {
                      debugPrint('Button image error: $error');
                      return Container(
                        height: 60 * scaleFactor,
                        width: 120 * scaleFactor,
                        decoration: BoxDecoration(
                          color: Colors.blue.withValues(alpha: 0.8),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Chat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
      ],
    );
  }

  /// 构建角色选择区域
  Widget _buildCharacterSelectionArea() {
    if (_isLoading || _firstCharacter == null || _aiCompanions.isEmpty) {
      return const SizedBox.shrink();
    }

    final screenHeight = MediaQuery.of(context).size.height;
    final scaleFactor = screenHeight / 812.0; // 基于812高度的缩放系数
    
    return Container(
      margin: const EdgeInsets.only(top: 44), // 距离人物图片底部44px
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 左侧两个角色（未选中状态）- 40x40，间隔20px
          ...List.generate(2, (index) {
            final characterIndex = index == 0 ? 2 : 1; // 第一个位置显示角色3，第二个位置显示角色2
            if (characterIndex >= _aiCompanions.length) return const SizedBox.shrink();
            
            final character = _aiCompanions[characterIndex];
            final isSelected = _selectedCharacterIndex == characterIndex;
            final isUnlocked = _isCharacterUnlocked(character['VabeUserName'] ?? 'Unknown');
            
            // 第一个角色向上偏移30px，第二个角色向上偏移15px
            final topOffset = index == 0 ? 30.0 : 15.0;
            
            return Row(
              children: [
                if (index > 0) SizedBox(width: 20 * scaleFactor), // 第二个角色前添加间隔
                Transform.translate(
                  offset: Offset(0, -topOffset * scaleFactor),
                  child: GestureDetector(
                    onTap: () => _switchCharacter(characterIndex),
                    child: Stack(
                      children: [
                        Container(
                          width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                          height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                          child: Image.asset(
                            isSelected 
                              ? 'assets/${character['VabeHeaderIconSelected']}'
                              : 'assets/${character['VabeHeaderIconNormal']}',
                            width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                            height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              debugPrint('Character image error: $error');
                              return Container(
                                width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                                height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                                decoration: BoxDecoration(
                                  color: isSelected 
                                    ? Colors.blue.withValues(alpha: 0.9)
                                    : Colors.white.withValues(alpha: 0.7),
                                  borderRadius: BorderRadius.circular(isSelected ? 38 * scaleFactor : 20 * scaleFactor),
                                  border: isSelected 
                                    ? Border.all(color: Colors.blue, width: 2 * scaleFactor)
                                    : null,
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: isSelected ? 38 * scaleFactor : 20 * scaleFactor,
                                  color: isSelected ? Colors.white : Colors.grey,
                                ),
                              );
                            },
                          ),
                        ),
                        // 锁定状态指示器
                        if (!isUnlocked)
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              width: 16 * scaleFactor,
                              height: 16 * scaleFactor,
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.7),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.lock,
                                size: 10 * scaleFactor,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
          
          // 中间角色（动态状态）- 根据选中状态调整大小
          SizedBox(width: 20 * scaleFactor), // 左侧间隔
          Transform.translate(
            offset: const Offset(0, 0), // 中间角色不偏移
            child: GestureDetector(
              onTap: () => _switchCharacter(0), // 第一个角色在中间
              child: Stack(
                children: [
                  Container(
                    width: _selectedCharacterIndex == 0 ? 76 * scaleFactor : 40 * scaleFactor,
                    height: _selectedCharacterIndex == 0 ? 76 * scaleFactor : 40 * scaleFactor,
                    child: Image.asset(
                      _selectedCharacterIndex == 0 
                        ? 'assets/${_aiCompanions[0]['VabeHeaderIconSelected']}'
                        : 'assets/${_aiCompanions[0]['VabeHeaderIconNormal']}',
                      width: _selectedCharacterIndex == 0 ? 76 * scaleFactor : 40 * scaleFactor,
                      height: _selectedCharacterIndex == 0 ? 76 * scaleFactor : 40 * scaleFactor,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        debugPrint('Selected character image error: $error');
                        final isSelected = _selectedCharacterIndex == 0;
                        return Container(
                          width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                          height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                          decoration: BoxDecoration(
                            color: isSelected 
                              ? Colors.white.withValues(alpha: 0.9)
                              : Colors.white.withValues(alpha: 0.7),
                            borderRadius: BorderRadius.circular(isSelected ? 38 * scaleFactor : 20 * scaleFactor),
                            border: isSelected 
                              ? Border.all(color: Colors.blue, width: 3 * scaleFactor)
                              : null,
                          ),
                          child: Icon(
                            Icons.person,
                            size: isSelected ? 38 * scaleFactor : 20 * scaleFactor,
                            color: isSelected ? Colors.blue : Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                  // 锁定状态指示器
                  if (!_isCharacterUnlocked(_aiCompanions[0]['VabeUserName'] ?? 'Unknown'))
                    Positioned(
                      top: 2,
                      right: 2,
                      child: Container(
                        width: 16 * scaleFactor,
                        height: 16 * scaleFactor,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.7),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.lock,
                          size: 10 * scaleFactor,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20 * scaleFactor), // 右侧间隔
          
          // 右侧两个角色（未选中状态）- 40x40，间隔20px
          ...List.generate(2, (index) {
            final characterIndex = index + 3; // 从第四个角色开始
            if (characterIndex >= _aiCompanions.length) return const SizedBox.shrink();
            
            final character = _aiCompanions[characterIndex];
            final isSelected = _selectedCharacterIndex == characterIndex;
            
            // 第四个角色向上偏移15px，第五个角色向上偏移30px
            final topOffset = index == 0 ? 15.0 : 30.0;
            
            return Row(
              children: [
                SizedBox(width: 20 * scaleFactor), // 20px间隔
                Transform.translate(
                  offset: Offset(0, -topOffset * scaleFactor),
                  child: GestureDetector(
                    onTap: () => _switchCharacter(characterIndex),
                    child: Stack(
                      children: [
                        Container(
                          width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                          height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                          child: Image.asset(
                            isSelected 
                              ? 'assets/${character['VabeHeaderIconSelected']}'
                              : 'assets/${character['VabeHeaderIconNormal']}',
                            width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                            height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              debugPrint('Character image error: $error');
                              return Container(
                                width: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                                height: isSelected ? 76 * scaleFactor : 40 * scaleFactor,
                                decoration: BoxDecoration(
                                  color: isSelected 
                                    ? Colors.blue.withValues(alpha: 0.9)
                                    : Colors.white.withValues(alpha: 0.7),
                                  borderRadius: BorderRadius.circular(isSelected ? 38 * scaleFactor : 20 * scaleFactor),
                                  border: isSelected 
                                    ? Border.all(color: Colors.blue, width: 2 * scaleFactor)
                                    : null,
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: isSelected ? 38 * scaleFactor : 20 * scaleFactor,
                                  color: isSelected ? Colors.white : Colors.grey,
                                ),
                              );
                            },
                          ),
                        ),
                        // 锁定状态指示器
                        if (!_isCharacterUnlocked(character['VabeUserName'] ?? 'Unknown'))
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              width: 16 * scaleFactor,
                              height: 16 * scaleFactor,
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.7),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.lock,
                                size: 10 * scaleFactor,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  /// 构建底部文本图片
  Widget _buildBottomTextImage() {
    final screenHeight = MediaQuery.of(context).size.height;
    final scaleFactor = screenHeight / 812.0; // 基于812高度的缩放系数
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12), // 距离底部12px
      child: Image.asset(
        AssetsManager.aiDetailText,
        height: 180 * scaleFactor, // 高度按系数缩放
        width: null, // 宽度自适应
        fit: BoxFit.fitWidth, // 保持宽高比，宽度自适应
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 180 * scaleFactor,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.blue.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: const Center(
              child: Text(
                'AI EmoSense Companion\nWe\'re here to listen and help',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1a365d),
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
