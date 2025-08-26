import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'people_chat_page.dart';
import '../utils/blacklist_manager.dart';
import 'report_page.dart';

/// 角色详情页面
class CharacterDetailPage extends StatefulWidget {
  final Map<String, dynamic> character;

  const CharacterDetailPage({
    super.key,
    required this.character,
  });

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  // 随机数生成器
  final Random _random = Random();
  
  // 关注状态
  bool _isFollowing = false;

  @override
  void initState() {
    super.initState();
    _loadFollowStatus();
  }

  /// 加载关注状态
  Future<void> _loadFollowStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final characterId = widget.character['VabeShowMotto'] ?? '';
      if (characterId.isNotEmpty) {
        setState(() {
          _isFollowing = prefs.getBool('follow_$characterId') ?? false;
        });
      }
    } catch (e) {
      debugPrint('Error loading follow status: $e');
    }
  }

  /// 切换关注状态
  Future<void> _toggleFollowStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final characterId = widget.character['VabeShowMotto'] ?? '';
      if (characterId.isNotEmpty) {
        final newStatus = !_isFollowing;
        setState(() {
          _isFollowing = newStatus;
        });
        await prefs.setBool('follow_$characterId', newStatus);
      }
    } catch (e) {
      debugPrint('Error toggling follow status: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // 顶部背景和角色信息区域
                _buildTopSection(context),
                // 为底部预留空间
                const SizedBox(height: 80),
              ],
            ),
          ),
          
          // 返回按钮 - 左上角
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
          
          // 功能按钮 - 右上角
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: GestureDetector(
              onTap: () => _showActionSheet(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.report_problem,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 显示功能菜单ActionSheet
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text(
          'Options',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              _reportUser();
            },
            child: const Text(
              'Report',
              style: TextStyle(
                color: Color(0xFFFF3B30),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              _blockUser();
            },
            child: const Text(
              'Block User',
              style: TextStyle(
                color: Color(0xFFFF3B30),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              _muteUser();
            },
            child: const Text(
              'Mute User',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Color(0xFF007AFF),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  /// 举报用户
  void _reportUser() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReportPage(
          character: widget.character,
        ),
      ),
    );
  }

  /// 屏蔽用户
  void _blockUser() {
    _showBlockConfirmDialog();
  }

  /// 拉黑用户
  void _muteUser() {
    _showMuteConfirmDialog();
  }

  /// 显示屏蔽确认对话框
  void _showBlockConfirmDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Block User',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: Text(
          'Are you sure you want to block ${widget.character['VabeUserName']}? You will no longer be able to see this user\'s moments.',
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
              'Cancel',
              style: TextStyle(
                color: Color(0xFF007AFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              _confirmBlockUser();
            },
            isDestructiveAction: true,
            child: const Text(
              'Block',
              style: TextStyle(
                color: Color(0xFFFF3B30),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 显示拉黑确认对话框
  void _showMuteConfirmDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Mute User',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: Text(
          'Are you sure you want to mute ${widget.character['VabeUserName']}? You will no longer be able to see this user\'s moments.',
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
              'Cancel',
              style: TextStyle(
                color: Color(0xFF007AFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              _confirmMuteUser();
            },
            isDestructiveAction: true,
            child: const Text(
              'Mute',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 确认屏蔽用户
  Future<void> _confirmBlockUser() async {
    final userId = widget.character['VabeUserName'] ?? 'Unknown';
    final success = await BlacklistManager.blockUser(userId);
    
    if (success) {
      // 显示确认消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$userId has been blocked'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
      
      // 通知discover页面刷新数据
      _notifyDiscoverPageRefresh();
      
      // 延迟返回上一页，让用户看到确认消息
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          Navigator.pop(context);
        }
      });
    } else {
      // 显示错误消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to block user'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  /// 确认拉黑用户
  Future<void> _confirmMuteUser() async {
    final userId = widget.character['VabeUserName'] ?? 'Unknown';
    final success = await BlacklistManager.muteUser(userId);
    
    if (success) {
      // 显示确认消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$userId has been muted'),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 2),
          ),
        );
      }
      
      // 通知discover页面刷新数据
      _notifyDiscoverPageRefresh();
      
      // 延迟返回上一页，让用户看到确认消息
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          Navigator.pop(context);
        }
      });
    } else {
      // 显示错误消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to mute user'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  /// 通知discover页面刷新数据
  void _notifyDiscoverPageRefresh() {
    // 使用Navigator.pop传递刷新信号
    Navigator.pop(context, 'refresh');
  }

  /// 构建顶部区域（背景图片和角色信息）
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
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: screenWidth,
                height: backgroundHeight,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF00FDC9),
                      Color(0xFF0099F9),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        
        // 头像和角色信息区域 - 放在同一层级
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 角色头像 - 左边距0px，因为Container已经有16px的左边距
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
                    child: _buildCharacterAvatar(),
                  ),
                ),
              ),
              
              const SizedBox(height: 0), // 头像与角色信息之间的间距
              
              // 角色昵称和性别图标
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: Row(
                  children: [
                    // 角色昵称
                    Text(
                      widget.character['VabeNickName'] ?? 'Unknown',
                      style: const TextStyle(
                        fontSize: 20, // 20pt字体
                        fontWeight: FontWeight.w800, // 85 Bold
                        color: Color(0xFF333333), // #333333颜色
                      ),
                    ),
                    
                    // 性别图标
                    const SizedBox(width: 8),
                    _buildGenderIcon(),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              
              // 角色用户名
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: Text(
                  '@${widget.character['VabeShowMotto'] ?? 'unknown'}',
                  style: const TextStyle(
                    fontSize: 14, // 14pt字体
                    fontWeight: FontWeight.normal, // Regular字重
                    color: Color(0xFF666666), // #666666颜色
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
               // 聊天按钮和关注按钮
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: _buildActionButtons(),
              ),

              const SizedBox(height: 20),
              // 角色评分
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: _buildRatingSection(),
              ),
              
              const SizedBox(height: 20),
              
              // 角色状态信息
              Transform.translate(
                offset: const Offset(0, -40), // 向上偏移40px，创造与背景的错位感
                child: _buildStatusSection(),
              ),
              
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ],
    );
  }

  /// 构建角色头像
  Widget _buildCharacterAvatar() {
    return Image.asset(
      'assets/${widget.character['VabeUserIcon']}.png',
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
    // 根据角色信息判断性别，这里可以根据实际数据结构调整
    // 假设通过角色名称或其他字段判断性别
    final characterName = widget.character['VabeNickName'] ?? '';
    final isMale = _isMaleCharacter(characterName);
    
    Color backgroundColor;
    IconData iconData;
    
    if (isMale) {
      backgroundColor = const Color(0xFF02C9F6); // 男性背景颜色 #02C9F6
      iconData = Icons.male;
    } else {
      backgroundColor = const Color(0xFFFF7CB8); // 女性背景颜色 #FF7CB8
      iconData = Icons.female;
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

  /// 判断角色性别（这里可以根据实际逻辑调整）
  bool _isMaleCharacter(String characterName) {
    // 这里可以根据角色名称或其他逻辑判断性别
    // 暂时使用简单的判断逻辑，你可以根据实际需求修改
    final maleKeywords = ['boy', 'male', 'man', 'guy', 'dude'];
    final femaleKeywords = ['girl', 'female', 'woman', 'lady'];
    
    final lowerName = characterName.toLowerCase();
    
    for (final keyword in maleKeywords) {
      if (lowerName.contains(keyword)) return true;
    }
    
    for (final keyword in femaleKeywords) {
      if (lowerName.contains(keyword)) return false;
    }
    
    // 默认返回女性（你可以根据实际需求调整）
    return false;
  }

  /// 构建评分区域
  Widget _buildRatingSection() {
    return Row(
      children: [
        // 评分标签
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF01B0FF).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFF01B0FF),
              width: 1,
            ),
          ),
          child: const Text(
            'Rating',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF01B0FF),
            ),
          ),
        ),
        
        const SizedBox(width: 12),
        
        // 评分星星
        Row(
          children: [
            // 前4个高亮星星
            ...List.generate(4, (index) => Image.asset(
              'assets/img_post_star_s_20250826.png',
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 16,
                  ),
                );
              },
            )),
            
            // 最后1个普通星星
            Image.asset(
              'assets/img_post_star_n_20250826.png',
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 16,
                  ),
                );
              },
            ),
            
            const SizedBox(width: 8),
            
            // 评分数字
            Text(
              _getRandomRating(),
              style: const TextStyle(
                color: Color(0xFF0D3889),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// 构建状态信息区域
  Widget _buildStatusSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 在线状态
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Online',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.green[700],
              ),
            ),
            const Spacer(),
            Text(
              'Last seen: ${_getRandomLastOnlineTime()}',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF999999),
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 12),
        
        // 角色描述
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.character['VabeShowMotto'] ?? 'This is a unique AI companion with personality and charm. Ready to chat and share moments with you!',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF666666),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 构建聊天按钮和关注按钮
  Widget _buildActionButtons() {
    return Row(
      children: [
        // 聊天按钮
        _buildChatButton(),
        
        const SizedBox(width: 12),
        
        // 关注按钮
        _buildFollowButton(),
      ],
    );
  }

  /// 构建聊天按钮
  Widget _buildChatButton() {
    return Container(
      margin: const EdgeInsets.only(left: 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PeopleChatPage(
                character: widget.character,
              ),
            ),
          );
        },
        child: Image.asset(
          'assets/me_chat_20250826.png',
          width: 65,
          height: 42,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 65,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFF01B0FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// 构建关注按钮
  Widget _buildFollowButton() {
    return GestureDetector(
      onTap: _toggleFollowStatus,
      child: Image.asset(
        _isFollowing 
          ? 'assets/me_follow_s_20250826.png'
          : 'assets/me_follow_n_20250826.png',
        width: 163,
        height: 42,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 163,
            height: 42,
            decoration: BoxDecoration(
              color: _isFollowing 
                ? const Color(0xFFFF6B6B)  // 关注状态：红色
                : const Color(0xFF01B0FF),  // 未关注状态：蓝色
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                _isFollowing ? 'Following' : 'Follow',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// 获取随机评分 (8.0 - 9.9)
  String _getRandomRating() {
    final rating = 8.0 + _random.nextDouble() * 1.9; // 8.0 到 9.9
    return rating.toStringAsFixed(1); // 保留一位小数
  }

  /// 获取随机最近在线时间
  String _getRandomLastOnlineTime() {
    final hoursAgo = _random.nextInt(60) + 1; // 1到60小时前
    final now = DateTime.now();
    final lastOnline = now.subtract(Duration(hours: hoursAgo));
    return '${lastOnline.hour}:${lastOnline.minute.toString().padLeft(2, '0')}';
  }
}
