import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math'; // Added for Random
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'moments_detail_page.dart'; // Added for MomentsDetailPage
import '../utils/blacklist_manager.dart';
import 'character_detail_page.dart';

/// 发现页面
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<Map<String, dynamic>> _peopleList = [];
  List<Map<String, dynamic>> _filteredPeopleList = []; // 过滤后的用户列表
  bool _isLoading = true;
  AudioPlayer? _currentAudioPlayer;
  String? _currentlyPlayingMusic;
  Map<String, bool> _likeStatus = {};
  
  // 使用 ValueNotifier 管理需要实时更新的状态
  final ValueNotifier<String?> _audioPlayingNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<Map<String, bool>> _likeStatusNotifier = ValueNotifier<Map<String, bool>>({});

  @override
  void initState() {
    super.initState();
    _loadPeopleData();
    _loadLikeStatus();
  }

  @override
  void dispose() {
    _stopCurrentAudio();
    _audioPlayingNotifier.dispose();
    _likeStatusNotifier.dispose();
    super.dispose();
  }

  /// 停止当前播放的音频
  void _stopCurrentAudio() {
    if (_currentAudioPlayer != null) {
      _currentAudioPlayer!.stop();
      _currentAudioPlayer!.dispose();
      _currentAudioPlayer = null;
      _currentlyPlayingMusic = null;
      // 使用 ValueNotifier 更新音频播放状态
      _audioPlayingNotifier.value = null;
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
      return;
    }

    try {
      _currentAudioPlayer = AudioPlayer();
      await _currentAudioPlayer!.play(AssetSource(musicFile));
      _currentlyPlayingMusic = musicFile;
      // 使用 ValueNotifier 更新音频播放状态
      _audioPlayingNotifier.value = musicFile;
    } catch (e) {
      debugPrint('Error playing audio: $e');
      _stopCurrentAudio();
    }
  }

  /// 检查音频是否正在播放
  bool _isAudioPlaying(String musicFile) {
    return _audioPlayingNotifier.value == musicFile && _currentAudioPlayer != null;
  }

  /// 加载人物数据
  Future<void> _loadPeopleData() async {
    try {
      final String jsonString = await DefaultAssetBundle.of(context).loadString('assets/people_share_circle.json');
      final List<dynamic> jsonList = json.decode(jsonString);
      setState(() {
        _peopleList = jsonList.cast<Map<String, dynamic>>();
        _isLoading = false;
      });
      // 数据加载完成后加载喜欢状态和过滤用户
      await _loadLikeStatus();
      await _filterBlockedUsers();
    } catch (e) {
      debugPrint('Error loading people data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 过滤被拉黑和屏蔽的用户
  Future<void> _filterBlockedUsers() async {
    try {
      final blockedUsers = await BlacklistManager.getBlockedUsers();
      final mutedUsers = await BlacklistManager.getMutedUsers();
      
      setState(() {
        _filteredPeopleList = _peopleList.where((person) {
          final userName = person['VabeUserName'] ?? '';
          return !blockedUsers.contains(userName) && !mutedUsers.contains(userName);
        }).toList();
      });
    } catch (e) {
      debugPrint('Error filtering blocked users: $e');
      // 如果过滤失败，显示所有用户
      setState(() {
        _filteredPeopleList = List.from(_peopleList);
      });
    }
  }

  /// 刷新用户列表（用于外部调用）
  Future<void> refreshUserList() async {
    await _filterBlockedUsers();
  }

  /// 加载喜欢状态
  Future<void> _loadLikeStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final person in _peopleList) {
        final userId = person['VabeUserIcon'] ?? '';
        if (userId.isNotEmpty) {
          _likeStatus[userId] = prefs.getBool('like_$userId') ?? false;
        }
      }
      // 使用 ValueNotifier 更新喜欢状态
      _likeStatusNotifier.value = Map.from(_likeStatus);
    } catch (e) {
      debugPrint('Error loading like status: $e');
    }
  }

  /// 切换喜欢状态
  Future<void> _toggleLikeStatus(String userId) async {
    if (userId.isEmpty) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final currentStatus = _likeStatus[userId] ?? false;
      final newStatus = !currentStatus;
      
      _likeStatus[userId] = newStatus;
      await prefs.setBool('like_$userId', newStatus);
      
      // 使用 ValueNotifier 更新喜欢状态
      _likeStatusNotifier.value = Map.from(_likeStatus);
    } catch (e) {
      debugPrint('Error toggling like status: $e');
    }
  }

  /// 检查是否喜欢
  bool _isLiked(String userId) {
    return _likeStatusNotifier.value[userId] ?? false;
  }

  /// 获取随机最近在线时间
  String _getRandomLastOnlineTime() {
    final random = Random();
    final hoursAgo = random.nextInt(60) + 1; // 1到60小时前
    final now = DateTime.now();
    final lastOnline = now.subtract(Duration(hours: hoursAgo));
    return '${lastOnline.year}/${lastOnline.month}/${lastOnline.day} ${lastOnline.hour}:${lastOnline.minute}';
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
        child: Stack(
          children: [
            // 顶部图片 - 从y:0位置开始
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/discover_community_top_20250825.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // 如果图片加载失败，显示默认占位符
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Colors.white.withValues(alpha: 0.1),
                    child: const Center(
                      child: Icon(
                        Icons.image,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            
            // 下方内容区域 - 透明色
            SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      
                      // 人物列表 - 从屏幕高/812系数下的242位置开始
                      Container(
                        margin: EdgeInsets.only(
                          top: (MediaQuery.of(context).size.height / 812.0) * 242,
                        ),
                        child: Column(
                          children: [
                            // 人物列表
                            _buildPeopleList(),
                          ],
                        ),
                      ),

                        // 为顶部图片预留空间
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2, // 预留30%的屏幕高度
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  /// 构建人物列表
  Widget _buildPeopleList() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }
    
    if (_filteredPeopleList.isEmpty) {
      return const Center(
        child: Text(
          'No people found',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      );
    }
    
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _filteredPeopleList.length,
      itemBuilder: (context, index) {
        final person = _filteredPeopleList[index];
        return _buildPersonItem(person);
      },
    );
  }
  
  /// 构建单个人物item
  Widget _buildPersonItem(Map<String, dynamic> person) {
    // 随机选择颜色
    final random = Random();
    final circleColor = random.nextBool() ? const Color(0xFF32FF81) : const Color(0xFF999999);
    
    return GestureDetector(
      onTap: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MomentsDetailPage(person: person),
          ),
        );
        
        // 如果返回结果是refresh，则刷新用户列表
        if (result == 'refresh') {
          await refreshUserList();
        }
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 0,
          right: 0,
          bottom: 16,
        ),
        height: 152,
        child: Stack(
          children: [
            // 底层：纯色#0D3889的view
            Positioned(
              top: 4,
              left: 21,
              right: 16,
              child: Container(
                height: 148,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D3889),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            
            // 上层：纯色#FFFFFF的view
            Positioned(
              top: 0,
              left: 16,
              right: 21,
              child: Container(
                height: 148,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                    color: const Color(0xFF0D3889),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                  child: Stack(
                    children: [
                      // 用户头像
                      Positioned(
                        left: 13,
                        top: 17,
                        child: GestureDetector(
                          onTap: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CharacterDetailPage(
                                  character: person,
                                ),
                              ),
                            );
                            
                            // 如果返回结果是refresh，则刷新用户列表
                            if (result == 'refresh') {
                              await refreshUserList();
                            }
                          },
                          child: Container(
                            width: 114,
                            height: 114,
                            child: Stack(
                              children: [
                                // 头像图片
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF01B0FF),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/${person['VabeUserIcon']}.png',
                                      width: 114,
                                      height: 114,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          width: 114,
                                          height: 114,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: const Icon(
                                            Icons.person,
                                            size: 50,
                                            color: Colors.grey,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                // 右下角随机颜色圆形
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: circleColor,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xFFFFFFFF),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      // 角色名称
                      Positioned(
                        left: 135, // 头像右边距21 (114 + 21)
                        top: 21,
                        child: Text(
                          person['VabeNickName'] ?? 'Unknown',
                          style: const TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                      // 最近在线时间
                      Positioned(
                        left: 135, // 头像右边距21 (114 + 21)
                        top: 70, // 角色名称下方
                        child: Text(
                          _getRandomLastOnlineTime(),
                          style: const TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      
                      // 音乐按钮
                      Positioned(
                        left: 134, // 头像右边距20 (114 + 20)
                        top: 95, // 最近在线时间下方，上边距5 (50 + 16 + 5 + 24)
                        child: GestureDetector(
                          onTap: () {
                            _playAudio(person['VabeMusic'] ?? '');
                          },
                          child: Container(
                            width: 157,
                            height: 35,
                            child: Stack(
                              children: [
                                // 背景图片
                                Image.asset(
                                  'assets/discover_music_20250826.png',
                                  width: 157,
                                  height: 35,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 157,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF01B0FF),
                                        borderRadius: BorderRadius.circular(17.5),
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
                                      '${random.nextInt(61) + 30}"', // 30到90之间的随机数
                                      style: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500, // Medium
                                      ),
                                    ),
                                  ),
                                ),
                                // 播放状态指示器
                                ValueListenableBuilder<String?>(
                                  valueListenable: _audioPlayingNotifier,
                                  builder: (context, playingMusic, child) {
                                    if (playingMusic == person['VabeMusic']) {
                                      return Positioned(
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
                                      );
                                    }
                                    return const SizedBox.shrink();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      // 喜欢按钮
                      Positioned(
                        right: 16,
                        top: 14,
                        child: ValueListenableBuilder<Map<String, bool>>(
                          valueListenable: _likeStatusNotifier,
                          builder: (context, likeStatus, child) {
                            return GestureDetector(
                              onTap: () {
                                _toggleLikeStatus(person['VabeUserIcon'] ?? '');
                              },
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                  (likeStatus[person['VabeUserIcon'] ?? ''] ?? false)
                                    ? 'assets/discover_like_s_20250826.png'
                                    : 'assets/discover_like_n_20250826.png',
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      (likeStatus[person['VabeUserIcon'] ?? ''] ?? false) 
                                        ? Icons.favorite 
                                        : Icons.favorite_border,
                                      color: (likeStatus[person['VabeUserIcon'] ?? ''] ?? false) 
                                        ? Colors.red 
                                        : Colors.grey,
                                      size: 24,
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
