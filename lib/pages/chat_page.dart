import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/assets_manager.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/user_preferences.dart';
import 'dart:io';
import '../utils/image_manager.dart';
import 'report_page.dart';
import '../utils/blacklist_manager.dart';
import 'voice_call_page.dart';

/// 聊天页面
class ChatPage extends StatefulWidget {
  final Map<String, dynamic> character; // 传递角色信息

  const ChatPage({
    super.key,
    required this.character,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  bool _isLoading = false;
  
  // User information
  String _userNickname = 'Vabe_218';
  String _userAvatarPath = AssetsManager.userDefaultAvatar;
  
  // Zhipu AI Configuration
  static const String _apiKey = '59aa4052143b4cd1bed832dd2382ceef.MWMLRgwgIYfa8Wcj';
  static const String _baseUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';
  
  @override
  void initState() {
    super.initState();
    _loadUserInfo();
    _addWelcomeMessage();
  }
  
  /// Load user information
  Future<void> _loadUserInfo() async {
    final userProfile = await UserPreferences.getUserProfile();
    setState(() {
      _userNickname = userProfile['nickname'] ?? 'Vabe_218';
      _userAvatarPath = userProfile['avatarPath'] ?? AssetsManager.userDefaultAvatar;
    });
  }
  
  /// 构建用户头像
  Widget _buildUserAvatar() {
    if (_userAvatarPath.isNotEmpty && _userAvatarPath != AssetsManager.userDefaultAvatar) {
      return FutureBuilder<String>(
        future: ImageManager.getFullImagePath(_userAvatarPath),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final fullPath = snapshot.data!;
            final file = File(fullPath);
            
            return Image.file(
              file,
              width: 40,
              height: 40,
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
      width: 40,
      height: 40,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return _buildDefaultAvatar();
      },
    );
  }
  
  /// 构建默认头像
  Widget _buildDefaultAvatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        size: 20,
        color: Colors.blue,
      ),
    );
  }
  
  /// 显示聊天菜单ActionSheet
  void _showChatMenuActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text(
          'Chat Options',
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
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              _reportUser();
            },
            child: const Text(
              'Report User',
              style: TextStyle(
                color: Color(0xFFFF3B30),
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
  
  /// 屏蔽用户
  void _blockUser() {
    _showBlockConfirmDialog();
  }
  
  /// 拉黑用户
  void _muteUser() {
    _showMuteConfirmDialog();
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
  
  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
  
  /// Add welcome message
  void _addWelcomeMessage() {
    _messages.add(ChatMessage(
      text: 'Hello! I\'m ${widget.character['VabeUserName'] ?? 'your AI companion'}. How can I help you today?',
      isUser: false,
      timestamp: DateTime.now(),
    ));
  }
  
  /// Send message to AI
  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) return;
    
    // Add user message
    final userMessage = ChatMessage(
      text: message,
      isUser: true,
      timestamp: DateTime.now(),
    );
    
    setState(() {
      _messages.add(userMessage);
      _isLoading = true;
    });
    
    _messageController.clear();
    _scrollToBottom();
    
    try {
      // Send to Zhipu AI
      final response = await _sendToZhipuAI(message);
      
      if (response != null) {
        final aiMessage = ChatMessage(
          text: response,
          isUser: false,
          timestamp: DateTime.now(),
        );
        
        setState(() {
          _messages.add(aiMessage);
        });
        
        _scrollToBottom();
      } else {
        _showErrorSnackBar('Failed to get AI response');
      }
    } catch (e) {
      _showErrorSnackBar('Error: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
  
  /// Send message to Zhipu AI API
  Future<String?> _sendToZhipuAI(String message) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_apiKey',
      };
      
      final body = {
        'model': 'glm-4-flash',
        'messages': [
          {
            'role': 'user',
            'content': message,
          }
        ],
        'stream': false,
        'temperature': 0.7,
        'max_tokens': 1000,
      };
      
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: headers,
        body: jsonEncode(body),
      );
      
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final choices = data['choices'] as List;
        if (choices.isNotEmpty) {
          final content = choices[0]['message']['content'] as String;
          return content;
        }
      } else {
        debugPrint('API Error: ${response.statusCode} - ${response.body}');
      }
      
      return null;
    } catch (e) {
      debugPrint('Error calling Zhipu AI: $e');
      return null;
    }
  }
  
  /// Scroll to bottom of chat
  void _scrollToBottom() {
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
  
  /// Show error snackbar
  void _showErrorSnackBar(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );
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
              
              // 聊天内容区域
              Expanded(
                child: Container(
                  color: Colors.transparent, // 改为透明
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(16),
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      return _buildMessageItem(_messages[index]);
                    },
                  ),
                ),
              ),
              
              // Loading indicator
              if (_isLoading)
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.smart_toy,
                          color: Colors.blue,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.blue.withValues(alpha: 0.7),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'AI is thinking...',
                              style: TextStyle(
                                color: Colors.grey.withValues(alpha: 0.7),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Stack(
        children: [
          // 返回按钮 - 绝对定位在左侧
          Positioned(
            left: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black, // 改为黑色
                size: 24,
              ),
            ),
          ),
          
          // 头像和昵称 - 完全屏幕居中
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 角色头像
                Stack(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.asset(
                          'assets/${widget.character['VabeHeaderIconSelected']}',
                          width: 44,
                          height: 44,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.9),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Color(0xFF0099F9),
                                size: 24,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    
                    // 在线状态绿色小圆圈
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(width: 12),
                
                // 角色名字
                Text(
                  widget.character['VabeUserName'] ?? 'Unknown',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal, // Regular
                    color: Color(0xFF333333),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          
          // 右侧功能按钮 - 绝对定位在右侧
          Positioned(
            right: 0,
            top: 0,
            child: Row(
              children: [
                // 视频通话按钮
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VoiceCallPage(
                          character: widget.character,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/chat_video_20250825.png',
                    width: 44,
                    height: 44,
                    fit: BoxFit.fitWidth, // 自适应宽度
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: const Icon(
                          Icons.videocam,
                          color: Color(0xFF0099F9),
                          size: 24,
                        ),
                      );
                    },
                  ),
                ),
                
                const SizedBox(width: 12),
                
                // 聊天菜单按钮
                GestureDetector(
                  onTap: () {
                    _showChatMenuActionSheet(context);
                  },
                  child: Image.asset(
                    'assets/chat_menu_20250825.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fitWidth, // 自适应宽度
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
                          color: Color(0xFF0099F9),
                          size: 16,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
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
                    onSubmitted: (_) => _sendMessage(),
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
                    onTap: _isLoading ? null : _sendMessage,
                    child: Image.asset(
                      AssetsManager.chatSendMessage,
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
  
  /// Build message item
  Widget _buildMessageItem(ChatMessage message) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isUser) ...[
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.9),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/${widget.character['VabeHeaderIconSelected']}',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.smart_toy,
                      color: Colors.blue,
                      size: 24,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 12),
          ],
          
          Expanded(
            child: Column(
              crossAxisAlignment: message.isUser 
                  ? CrossAxisAlignment.end 
                  : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: message.isUser 
                        ? const Color(0xFF0099F9) 
                        : Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    message.text,
                    style: TextStyle(
                      color: message.isUser ? Colors.white : Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _formatTime(message.timestamp),
                  style: TextStyle(
                    color: Colors.grey.withValues(alpha: 0.5),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          
          if (message.isUser) ...[
            const SizedBox(width: 12),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: ClipOval(
                child: _buildUserAvatar(),
              ),
            ),
          ],
        ],
      ),
    );
  }
  
  /// Format timestamp
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
          'Are you sure you want to block ${widget.character['VabeUserName']}? You will no longer be able to chat with this user.',
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
          'Are you sure you want to mute ${widget.character['VabeUserName']}? You will no longer be able to chat with this user.',
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
}

/// Chat message model
class ChatMessage {
  final String text;
  final bool isUser;
  final DateTime timestamp;
  
  ChatMessage({
    required this.text,
    required this.isUser,
    required this.timestamp,
  });
}
