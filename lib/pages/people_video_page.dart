import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:permission_handler/permission_handler.dart';

/// 人物视频通话页面
class PeopleVideoPage extends StatefulWidget {
  final Map<String, dynamic> character;
  
  const PeopleVideoPage({
    super.key,
    required this.character,
  });

  @override
  State<PeopleVideoPage> createState() => _PeopleVideoPageState();
}

class _PeopleVideoPageState extends State<PeopleVideoPage> {
  Timer? _autoReturnTimer;
  AudioPlayer? _audioPlayer;
  
  // 按钮选中状态
  bool _isCameraSelected = false;
  bool _isMicrophoneSelected = false;
  bool _isCycleSelected = false;
  bool _isHornSelected = false;
  
  @override
  void initState() {
    super.initState();
    _startAutoReturnTimer();
    _playCallAudio();
  }
  
  @override
  void dispose() {
    _autoReturnTimer?.cancel();
    _audioPlayer?.dispose();
    super.dispose();
  }
  
  /// 播放通话音频
  Future<void> _playCallAudio() async {
    try {
      _audioPlayer = AudioPlayer();
      await _audioPlayer!.play(AssetSource('vabe_call_20250825.mp3'));
      // 设置循环播放
      await _audioPlayer!.setReleaseMode(ReleaseMode.loop);
    } catch (e) {
      debugPrint('Error playing call audio: $e');
    }
  }
  
  /// 启动30秒自动返回定时器
  void _startAutoReturnTimer() {
    _autoReturnTimer = Timer(const Duration(seconds: 30), () {
      if (mounted) {
        Navigator.pop(context);
      }
    });
  }
  
  /// 结束通话
  void _endCall() async {
    // 停止音频播放
    try {
      await _audioPlayer?.stop();
    } catch (e) {
      debugPrint('Error stopping audio: $e');
    }
    
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // 添加调试信息
    debugPrint('PeopleVideoPage - Received character data: ${widget.character}');
    debugPrint('PeopleVideoPage - VabeUserIcon: ${widget.character['VabeUserIcon']}');
    debugPrint('PeopleVideoPage - VabeUserName: ${widget.character['VabeUserName']}');
    
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/${widget.character['VabeUserIcon'] ?? 'home_bg_20250822'}.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 顶部导航栏
              _buildTopBar(),
              
              // 绿色背景条
              _buildGreenBackgroundBar(),
              
              // 挂断按钮和通话状态
              const Spacer(),
              _buildHangUpSection(),
              
              // 底部功能按钮
              const SizedBox(height: 12),
              _buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
    }
  
  /// 构建挂断按钮和通话状态
  Widget _buildHangUpSection() {
    return Column(
      children: [
        // 挂断按钮
        Container(
          width: 100,
          height: 100,
          child: GestureDetector(
            onTap: () {
              _endCall();
            },
            child: Image.asset(
              'assets/video_hang_on_20250825.png',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                // 如果图片加载失败，显示默认挂断按钮
                return Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF3B30),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.call_end,
                    size: 50,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ),
        
        // 通话状态文字
        const SizedBox(height: 20),
        const Text(
          'Calling the contact now...',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
  
  /// 构建底部功能按钮
  Widget _buildBottomButtons() {
    return Container(
      margin: const EdgeInsets.only(bottom: 44),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 摄像头按钮
          _buildFunctionButton(
            isSelected: _isCameraSelected,
            normalIcon: 'video_call_camera_n_20250825.png',
            selectedIcon: 'video_call_camera_s_20250825.png',
            onTap: () async {
              await _handleCameraPermission();
            },
          ),
          
          SizedBox(width: 16),
          
          // 麦克风按钮
          _buildFunctionButton(
            isSelected: _isMicrophoneSelected,
            normalIcon: 'video_call_microphone_n_20250825.png',
            selectedIcon: 'video_call_microphone_s_20250825.png',
            onTap: () async {
              await _handleMicrophonePermission();
            },
          ),
          
          SizedBox(width: 16),
          
          // 循环按钮
          _buildFunctionButton(
            isSelected: _isCycleSelected,
            normalIcon: 'video_call_cycle_n_20250825.png',
            selectedIcon: 'video_call_cycle_s_20250825.png',
            onTap: () {
              setState(() {
                _isCycleSelected = !_isCycleSelected;
              });
              // 无功能
            },
          ),
          
          SizedBox(width: 16),
          
          // 扬声器按钮
          _buildFunctionButton(
            isSelected: _isHornSelected,
            normalIcon: 'video_audio_horn_n_20250825.png',
            selectedIcon: 'video_audio_horn_s_20250825.png',
            onTap: () {
              setState(() {
                _isHornSelected = !_isHornSelected;
              });
              // 无功能
            },
          ),
        ],
      ),
    );
  }
  
  /// 构建功能按钮
  Widget _buildFunctionButton({
    required bool isSelected,
    required String normalIcon,
    required String selectedIcon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        child: Image.asset(
          'assets/$selectedIcon',
          width: 40,
          height: 40,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            // 如果选中图标加载失败，尝试加载未选中图标
            return Image.asset(
              'assets/$normalIcon',
              width: 40,
              height: 40,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                // 如果都加载失败，显示默认图标
                return Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isSelected 
                        ? Colors.blue.withValues(alpha: 0.8)
                        : Colors.white.withValues(alpha: 0.3),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? Colors.blue : Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Icon(
                    Icons.settings,
                    size: 20,
                    color: isSelected ? Colors.white : Colors.white,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
  
  /// 处理摄像头权限
  Future<void> _handleCameraPermission() async {
    // 检查当前权限状态
    PermissionStatus status = await Permission.camera.status;
    
    if (status.isGranted) {
      // 已有权限，切换状态
      setState(() {
        _isCameraSelected = !_isCameraSelected;
      });
      _showCameraStatusDialog(_isCameraSelected);
    } else if (status.isDenied) {
      // 权限被拒绝，请求权限
      PermissionStatus newStatus = await Permission.camera.request();
      if (newStatus.isGranted) {
        setState(() {
          _isCameraSelected = true;
        });
        _showCameraStatusDialog(true);
      } else {
        _showCameraPermissionDeniedDialog();
      }
    } else if (status.isPermanentlyDenied) {
      // 权限被永久拒绝，引导用户去设置页面
      _showCameraPermissionPermanentlyDeniedDialog();
    }
  }
  
  /// 处理麦克风权限
  Future<void> _handleMicrophonePermission() async {
    // 检查当前权限状态
    PermissionStatus status = await Permission.microphone.status;
    
    if (status.isGranted) {
      // 已有权限，切换状态
      setState(() {
        _isMicrophoneSelected = !_isMicrophoneSelected;
      });
      _showMicrophoneStatusDialog(_isMicrophoneSelected);
    } else if (status.isDenied) {
      // 权限被拒绝，请求权限
      PermissionStatus newStatus = await Permission.microphone.request();
      if (newStatus.isGranted) {
        setState(() {
          _isMicrophoneSelected = true;
        });
        _showMicrophoneStatusDialog(true);
      } else {
        _showMicrophonePermissionDeniedDialog();
      }
    } else if (status.isPermanentlyDenied) {
      // 权限被永久拒绝，引导用户去设置页面
      _showMicrophonePermissionPermanentlyDeniedDialog();
    }
  }
  
  /// 显示摄像头状态提示
  void _showCameraStatusDialog(bool isEnabled) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(
          isEnabled ? 'Camera Enabled' : 'Camera Disabled',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: Text(
          isEnabled 
              ? 'Camera is now enabled for video calling.'
              : 'Camera is now disabled for video calling.',
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
  
  /// 显示麦克风状态提示
  void _showMicrophoneStatusDialog(bool isEnabled) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(
          isEnabled ? 'Microphone Enabled' : 'Microphone Disabled',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: Text(
          isEnabled 
              ? 'Microphone is now enabled for voice calling.'
              : 'Microphone is now disabled for voice calling.',
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
  
  /// 显示摄像头权限被拒绝对话框
  void _showCameraPermissionDeniedDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Camera Permission Denied',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: const Text(
          'Camera permission is required for video calling. Please grant permission in the next dialog.',
          style: TextStyle(
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
  
  /// 显示麦克风权限被拒绝对话框
  void _showMicrophonePermissionDeniedDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Microphone Permission Denied',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: const Text(
          'Microphone permission is required for voice calling. Please grant permission in the next dialog.',
          style: TextStyle(
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
  
  /// 显示摄像头权限被永久拒绝对话框
  void _showCameraPermissionPermanentlyDeniedDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Camera Permission Required',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: const Text(
          'Camera permission is permanently denied. Please go to Settings > Privacy & Security > Camera to enable it.',
          style: TextStyle(
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
                color: Color(0xFF8E8E93),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              openAppSettings();
            },
            child: const Text(
              'Settings',
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
  
  /// 显示麦克风权限被永久拒绝对话框
  void _showMicrophonePermissionPermanentlyDeniedDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Microphone Permission Required',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF333333),
          ),
        ),
        content: const Text(
          'Microphone permission is permanently denied. Please go to Settings > Privacy & Security > Microphone to enable it.',
          style: TextStyle(
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
                color: Color(0xFF8E8E93),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              openAppSettings();
            },
            child: const Text(
              'Settings',
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
  
  /// 构建顶部导航栏
  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // 返回按钮
          GestureDetector(
            onTap: _endCall,
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          
          const SizedBox(width: 16),
          
          // 标题 - 角色名字
          Expanded(
            child: Text(
              widget.character['VabeUserName'] ?? 'Unknown',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF), // #FFFFFF颜色
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          // 右侧占位，保持标题居中
          const SizedBox(width: 60),
        ],
      ),
    );
  }

  /// 构建绿色背景条
  Widget _buildGreenBackgroundBar() {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      width: double.infinity,
      height: 50,
      color: Colors.transparent, // 透明色
      child: Row(
        children: [
          // 左边距16
          const SizedBox(width: 16),
          
          // 头像左边距6px
          const SizedBox(width: 6),
          
          // 半透明背景View
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF0A0A0A).withValues(alpha: 0.3), // #0A0A0A alpha:0.3
              borderRadius: BorderRadius.circular(25), // 圆角25
            ),
            child: Row(
              children: [
                // 内部左边距
                const SizedBox(width: 12),
                
                // 角色头像 - 36x36，圆角18，水平居中
                Container(
                  width: 36,
                  height: 36,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      'assets/${widget.character['VabeUserIcon'] ?? 'user_default_20250821'}.png',
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        debugPrint('PeopleVideoPage - Avatar load error: $error');
                        return Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 18,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                
                // 头像右边距8px
                const SizedBox(width: 8),
                
                // 角色名字
                Text(
                  widget.character['VabeUserName'] ?? 'Unknown',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFFFFFFF), // #FFFFFF颜色
                  ),
                ),
                
                // 文字右边距15px
                const SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
