import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:convert';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import '../utils/user_preferences.dart';
import '../utils/image_manager.dart';
import '../utils/blacklist_manager.dart';
import 'report_page.dart';
import 'character_detail_page.dart';

/// 朋友圈详情页面
class MomentsDetailPage extends StatefulWidget {
  final Map<String, dynamic> person;

  const MomentsDetailPage({
    super.key,
    required this.person,
  });

  @override
  State<MomentsDetailPage> createState() => _MomentsDetailPageState();
}

class _MomentsDetailPageState extends State<MomentsDetailPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<CommentMessage> _comments = [];
  
  // 音频播放相关
  AudioPlayer? _currentAudioPlayer;
  String? _currentlyPlayingMusic;
  
  // 喜欢状态
  bool _isLiked = false;
  
  // 当前显示的图片索引
  int _currentPhotoIndex = 0;
  
  // 随机数生成器
  final Random _random = Random();
  
  // 用户信息
  String _userNickname = '';
  String _userAvatarPath = '';

  @override
  void initState() {
    super.initState();
    _loadLikeStatus();
    _loadComments();
    _loadUserInfo();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    _stopCurrentAudio();
    super.dispose();
  }

  /// 加载用户信息
  Future<void> _loadUserInfo() async {
    try {
      final userProfile = await UserPreferences.getUserProfile();
      setState(() {
        _userNickname = userProfile['nickname'] ?? 'User';
        _userAvatarPath = userProfile['avatarPath'] ?? '';
      });
    } catch (e) {
      debugPrint('Error loading user info: $e');
      setState(() {
        _userNickname = 'User';
        _userAvatarPath = '';
      });
    }
  }

  /// 加载喜欢状态
  Future<void> _loadLikeStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = widget.person['VabeUserIcon'] ?? '';
      if (userId.isNotEmpty) {
        setState(() {
          _isLiked = prefs.getBool('like_$userId') ?? false;
        });
      }
    } catch (e) {
      debugPrint('Error loading like status: $e');
    }
  }

  /// 切换喜欢状态
  Future<void> _toggleLikeStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = widget.person['VabeUserIcon'] ?? '';
      if (userId.isNotEmpty) {
        final newStatus = !_isLiked;
        setState(() {
          _isLiked = newStatus;
        });
        await prefs.setBool('like_$userId', newStatus);
      }
    } catch (e) {
      debugPrint('Error toggling like status: $e');
    }
  }

  /// 加载评论数据
  Future<void> _loadComments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = widget.person['VabeUserIcon'] ?? '';
      if (userId.isNotEmpty) {
        final commentsJson = prefs.getString('comments_$userId');
        if (commentsJson != null) {
          final List<dynamic> commentsList = jsonDecode(commentsJson);
          setState(() {
            _comments.clear();
            _comments.addAll(
              commentsList.map((json) => CommentMessage.fromJson(json)).toList(),
            );
          });
        }
      }
    } catch (e) {
      debugPrint('Error loading comments: $e');
    }
  }

  /// 保存评论数据到本地
  Future<void> _saveComments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = widget.person['VabeUserIcon'] ?? '';
      if (userId.isNotEmpty) {
        final commentsJson = jsonEncode(_comments.map((comment) => comment.toJson()).toList());
        await prefs.setString('comments_$userId', commentsJson);
      }
    } catch (e) {
      debugPrint('Error saving comments: $e');
    }
  }

  /// 停止当前播放的音频
  void _stopCurrentAudio() {
    if (_currentAudioPlayer != null) {
      _currentAudioPlayer!.stop();
      _currentAudioPlayer!.dispose();
      _currentAudioPlayer = null;
      _currentlyPlayingMusic = null;
    }
  }

  /// 播放音频
  Future<void> _playAudio(String musicFile) async {
    // 如果当前有音频在播放，先停止
    if (_currentAudioPlayer != null && _currentlyPlayingMusic != musicFile) {
      _stopCurrentAudio();
    }

    // 如果点击的是同一个音频，则停止播放
    if (_currentlyPlayingMusic == musicFile && _currentAudioPlayer != null) {
      _stopCurrentAudio();
      setState(() {});
      return;
    }

    try {
      _currentAudioPlayer = AudioPlayer();
      await _currentAudioPlayer!.play(AssetSource(musicFile));
      _currentlyPlayingMusic = musicFile;
      setState(() {});
    } catch (e) {
      debugPrint('Error playing audio: $e');
      _stopCurrentAudio();
    }
  }

  /// 检查音频是否正在播放
  bool _isAudioPlaying(String musicFile) {
    return _currentlyPlayingMusic == musicFile && _currentAudioPlayer != null;
  }

  /// 发送评论
  Future<void> _sendComment() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) return;

    final comment = CommentMessage(
      text: message,
      userName: _userNickname,
      userAvatar: _userAvatarPath,
      timestamp: DateTime.now(),
      isCurrentUser: true,
    );

    setState(() {
      _comments.add(comment);
    });

    // 保存评论到本地
    await _saveComments();

    _messageController.clear();
    
    // 滚动到底部
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  /// 获取随机最近在线时间
  String _getRandomLastOnlineTime() {
    final hoursAgo = _random.nextInt(60) + 1; // 1到60小时前
    final now = DateTime.now();
    final lastOnline = now.subtract(Duration(hours: hoursAgo));
    return '${lastOnline.year}/${lastOnline.month}/${lastOnline.day}';
  }
  
  /// 获取随机评分 (8.0 - 9.9)
  String _getRandomRating() {
    final rating = 8.0 + _random.nextDouble() * 1.9; // 8.0 到 9.9
    return rating.toStringAsFixed(1); // 保留一位小数
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
              Color(0xFF00FDC9), // #00FDC9
              Color(0xFF0099F9), // #0099F9
            ],
            transform: GradientRotation(0.5), // x为0.5
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 导航栏
              _buildTopBar(),
              
              // 滚动内容区域 - 使用 Expanded 而不是固定高度
              Expanded(
                child: Container(
                  color: Colors.transparent, // 改为透明背景
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        // 主要内容卡片
                        _buildMainContentCard(),
                        
                        // 评论区域
                        _buildCommentsSection(),
                      ],
                    ),
                  ),
                ),
              ),
              
              // 底部发送消息区域
              _buildBottomSendArea(),
            ],
          ),
        ),
      ),
    );
  }

  /// 构建顶部导航栏
  Widget _buildTopBar() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // 返回按钮
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
  
      
          
          const Spacer(),
          
          // 功能按钮 - 右边距16
          GestureDetector(
            onTap: () => _showActionSheet(context),
            child: Image.asset(
              'assets/monments_detail_report_20250826.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 16,
                  ),
                );
              },
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
          character: widget.person,
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
          'Are you sure you want to block ${widget.person['VabeUserName']}? You will no longer be able to see this user\'s moments.',
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
          'Are you sure you want to mute ${widget.person['VabeUserName']}? You will no longer be able to see this user\'s moments.',
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
    final userId = widget.person['VabeUserName'] ?? 'Unknown';
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
    final userId = widget.person['VabeUserName'] ?? 'Unknown';
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

  /// 构建主要内容卡片
  Widget _buildMainContentCard() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 16),
      child: Container(
        height: 537,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: const Color(0xFF0D3889),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0D3889).withValues(alpha: 1),
              offset: const Offset(5, 5),
              blurRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            // 用户头像
            Positioned(
              left: 16,
              top: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CharacterDetailPage(
                        character: widget.person,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  width: 41,
                  height: 41,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/${widget.person['VabeUserIcon']}.png',
                      width: 41,
                      height: 41,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 41,
                          height: 41,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            
                        // 角色名称
            Positioned(
              left: 64, // 头像右边距16 (16 + 41 + 20)
              top: 22,
              child: Text(
                widget.person['VabeNickName'] ?? 'Unknown',
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            // 图片展示区域
            Positioned(
              left: 8,
              top: 69, // 头像下方12 (16 + 41 + 12)
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 52, // 左右边距各16
                height: 332,
                child: Stack(
                  children: [
                    // 图片轮播
                    PageView.builder(
                      itemCount: (widget.person['VabeShowPhotoArray'] as List<dynamic>?)?.length ?? 0,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPhotoIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        final photoArray = widget.person['VabeShowPhotoArray'] as List<dynamic>?;
                        if (photoArray == null || index >= photoArray.length) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.image,
                                size: 60,
                                color: Colors.grey,
                              ),
                            ),
                          );
                        }
                        
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/${photoArray[index]}.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.image,
                                      size: 60,
                                      color: Colors.grey,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    
                    // 图片指示器
                    Positioned(
                      bottom: 16,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          (widget.person['VabeShowPhotoArray'] as List<dynamic>?)?.length ?? 0,
                          (index) => Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPhotoIndex == index
                                  ? Colors.white
                                  : Colors.white.withValues(alpha: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // 音乐按钮
            Positioned(
              left: 16, // 头像右边距16 (16 + 41 + 20)
              top: 448,
              child: GestureDetector(
                onTap: () {
                  _playAudio(widget.person['VabeMusic'] ?? '');
                },
                child: SizedBox(
                  width: 187,
                  height: 42,
                  child: Stack(
                    children: [
                      // 背景图片
                      Image.asset(
                        'assets/discover_detail_music_20250826.png',
                        width: 187,
                        height: 42,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 187,
                            height: 42,
                            decoration: BoxDecoration(
                              color: const Color(0xFF01B0FF),
                              borderRadius: BorderRadius.circular(21),
                            ),
                          );
                        },
                      ),
                      // 随机数字文本
                      Positioned(
                        right: 12,
                        top: 0,
                        bottom: 0,
                        child: Center(
                          child: Text(
                            '${_random.nextInt(61) + 30}"',
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // 播放状态指示器
                      if (_isAudioPlaying(widget.person['VabeMusic'] ?? ''))
                        Positioned(
                          left: 10,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.pause,
                                size: 12,
                                color: Color(0xFF01B0FF),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            
            // 角色名字 (VabeUserName)
            Positioned(
              left: 16,
              top: 411, // 音乐按钮下方10 (443 + 35 + 10)
              child: Text(
                widget.person['VabeUserName'] ?? 'Unknown',
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            // 评分系统
            Positioned(
              left: 16,
              top: 494, // 角色名字下方32 (488 + 22 + 10)
              child: Row(
                children: [
                  // 前4个高亮星星
                  ...List.generate(4, (index) => Image.asset(
                    'assets/img_post_star_s_20250826.png',
                    width: 27,
                    height: 27,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        ),
                      );
                    },
                  )),
                  
                  // 最后1个普通星星
                  Image.asset(
                    'assets/img_post_star_n_20250826.png',
                    width: 27,
                    height: 27,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        ),
                      );
                    },
                  ),
                  
                  // 评分显示
                  const SizedBox(width: 4),
                  Text(
                    '${_getRandomRating()}',
                    style: const TextStyle(
                      color: Color(0xFF0D3889),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            
            // 喜欢按钮 - 右上角
            Positioned(
              right: 24,
              top: 77,
              child: GestureDetector(
                onTap: _toggleLikeStatus,
                child: Container(
                  width: 57,
                  height: 57,
                                      decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  child: Image.asset(
                    _isLiked 
                      ? 'assets/discover_like_s_20250826.png'
                      : 'assets/discover_like_n_20250826.png',
                    width: 57,
                    height: 57,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        _isLiked ? Icons.favorite : Icons.favorite_border,
                        color: _isLiked ? Colors.red : Colors.grey,
                        size: 57,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 构建评论区域
  Widget _buildCommentsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 评论标题
          Container(
            padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
            child: Image.asset(
              'assets/discover_detail_comments_20250826.png',
              width: 136,
              height: 34,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 136,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Comments',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          
          // 评论列表或暂无评论提示
          if (_comments.isEmpty)
            _buildNoCommentsPlaceholder()
          else
            ..._comments.map((comment) => _buildCommentItem(comment)),
        ],
      ),
    );
  }

  /// 构建暂无评论提示
  Widget _buildNoCommentsPlaceholder() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 48,
            color: Colors.white.withValues(alpha: 0.6),
          ),
          const SizedBox(height: 16),
          Text(
            'No comments yet',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.8),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Be the first to comment!',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.6),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  /// 构建评论项
  Widget _buildCommentItem(CommentMessage comment) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: _buildCommentUserAvatar(comment),
            ),
          ),
          
          const SizedBox(width: 12),
          
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 用户名和时间
                Row(
                  children: [
                    Text(
                      comment.isCurrentUser ? '${comment.userName} (Me)' : comment.userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _formatTime(comment.timestamp),
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.7),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 4),
                
                // 评论文本
                Text(
                  comment.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 构建评论用户头像
  Widget _buildCommentUserAvatar(CommentMessage comment) {
    if (comment.isCurrentUser && comment.userAvatar.isNotEmpty) {
      return FutureBuilder<String>(
        future: ImageManager.getFullImagePath(comment.userAvatar),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final fullPath = snapshot.data!;
            final file = File(fullPath);
            
            return Image.file(
              file,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return _buildDefaultCommentAvatar();
              },
            );
          }
          
          return _buildDefaultCommentAvatar();
        },
      );
    }
    
    // 显示默认头像
    return _buildDefaultCommentAvatar();
  }

  /// 构建默认评论头像
  Widget _buildDefaultCommentAvatar() {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        color: Colors.grey,
        size: 20,
      ),
    );
  }

  /// 构建底部发送消息区域
  Widget _buildBottomSendArea() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final scaleFactor = screenHeight / 812.0; // 基于812高度的缩放系数
    
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Center(
        child: Container(
          width: screenWidth - 32, // 屏幕宽 - 32
          height: 68 * scaleFactor, // 高度按系数缩放
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24 * scaleFactor), // 圆角按系数缩放
          ),
          child: Stack(
            children: [
              // 输入框 - 左侧
              Positioned(
                left: 8 * scaleFactor, // 左边距按系数缩放
                top: 10 * scaleFactor, // 上边距按系数缩放
                bottom: 10 * scaleFactor, // 下边距按系数缩放
                child: Container(
                  width: (screenWidth - 32) - (84 + 8 + 8 + 8) * scaleFactor, // 总宽度减去左边距、按钮宽度、按钮右边距、输入框右边距
                  decoration: BoxDecoration(
                    color: const Color(0xFFE4EFFF), // 背景颜色 #E4EFFF
                    borderRadius: BorderRadius.circular(12 * scaleFactor), // 圆角按系数缩放
                  ),
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Say something...', // 提示语
                      hintStyle: TextStyle(
                        color: const Color(0xFF555555), // 提示语颜色 #555555
                        fontSize: 15 * scaleFactor, // 字号按系数缩放
                        fontWeight: FontWeight.normal, // Regular字重
                      ),
                      border: InputBorder.none, // 移除边框
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16 * scaleFactor,
                        vertical: 16 * scaleFactor,
                      ),
                    ),
                    style: TextStyle(
                      color: const Color(0xFF111111), // 输入文字颜色 #111111
                      fontSize: 15 * scaleFactor, // 字号按系数缩放
                      fontWeight: FontWeight.normal, // Regular字重
                    ),
                    maxLines: 1, // 单行输入
                    textAlignVertical: TextAlignVertical.center, // 垂直居中
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _sendComment(),
                  ),
                ),
              ),
              
              // 发送按钮 - 右侧
              Positioned(
                right: 8 * scaleFactor, // 右边距按系数缩放
                top: 0,
                bottom: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: _sendComment,
                    child: Image.asset(
                      'assets/chat_sendMessage_20250825.png',
                      width: 84 * scaleFactor, // 宽度按系数缩放
                      height: 45 * scaleFactor, // 高度按系数缩放
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 84 * scaleFactor,
                          height: 45 * scaleFactor,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0099F9),
                            borderRadius: BorderRadius.circular(22.5 * scaleFactor),
                          ),
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 24,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 格式化时间
  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else {
      return '${timestamp.day}/${timestamp.month} ${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
    }
  }
}

/// 评论消息模型
class CommentMessage {
  final String text;
  final String userName;
  final String userAvatar;
  final DateTime timestamp;
  final bool isCurrentUser;
  
  CommentMessage({
    required this.text,
    required this.userName,
    required this.userAvatar,
    required this.timestamp,
    this.isCurrentUser = false,
  });

  /// 从JSON创建CommentMessage
  factory CommentMessage.fromJson(Map<String, dynamic> json) {
    return CommentMessage(
      text: json['text'] ?? '',
      userName: json['userName'] ?? '',
      userAvatar: json['userAvatar'] ?? '',
      timestamp: DateTime.parse(json['timestamp'] ?? DateTime.now().toIso8601String()),
      isCurrentUser: json['isCurrentUser'] ?? false,
    );
  }

  /// 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'userName': userName,
      'userAvatar': userAvatar,
      'timestamp': timestamp.toIso8601String(),
      'isCurrentUser': isCurrentUser,
    };
  }
}
