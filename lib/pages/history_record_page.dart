import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'people_chat_page.dart';
import 'dart:io';

/// 聊天历史记录页面
class HistoryRecordPage extends StatefulWidget {
  const HistoryRecordPage({super.key});

  @override
  State<HistoryRecordPage> createState() => _HistoryRecordPageState();
}

class _HistoryRecordPageState extends State<HistoryRecordPage> {
  List<ChatHistoryItem> _chatHistoryList = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadChatHistory();
  }

  /// 加载所有聊天历史记录
  Future<void> _loadChatHistory() async {
    try {
      setState(() {
        _isLoading = true;
      });

      final prefs = await SharedPreferences.getInstance();
      final keys = prefs.getKeys();
      
      // 筛选出聊天历史记录的键
      final chatKeys = keys.where((key) => key.startsWith('chat_history_')).toList();
      
      final List<ChatHistoryItem> historyList = [];
      
      for (final key in chatKeys) {
        final characterId = key.replaceFirst('chat_history_', '');
        final historyJson = prefs.getString(key);
        
        if (historyJson != null) {
          try {
            final List<dynamic> historyData = jsonDecode(historyJson);
            if (historyData.isNotEmpty) {
              // 获取最后一条消息作为预览
              final lastMessage = historyData.last;
              final messageText = lastMessage['text'] as String;
              final timestamp = DateTime.parse(lastMessage['timestamp'] as String);
              final messageCount = historyData.length;
              
              // 从people_share_circle.json中查找对应的角色信息
              String characterName = _getCleanCharacterName(characterId);
              String userIcon = 'user_default_20250821'; // 默认头像
              
              // 尝试从角色数据中获取更多信息
              try {
                final String characterDataJson = await DefaultAssetBundle.of(context).loadString('assets/people_share_circle.json');
                final List<dynamic> characterDataList = jsonDecode(characterDataJson);
                
                // 查找匹配的角色
                for (final characterData in characterDataList) {
                  if (characterData['VabeUserName'] == characterId) {
                    characterName = _getCleanCharacterName(characterData['VabeUserName'] ?? characterId);
                    userIcon = characterData['VabeUserIcon'] ?? userIcon;
                    break;
                  }
                }
              } catch (e) {
                debugPrint('Error loading character data: $e');
              }
              
              historyList.add(ChatHistoryItem(
                characterId: characterId,
                characterName: characterName,
                lastMessage: messageText,
                lastMessageTime: timestamp,
                messageCount: messageCount,
                historyData: historyData,
                userIcon: userIcon, // 添加头像路径
              ));
            }
          } catch (e) {
            debugPrint('Error parsing chat history for $characterId: $e');
          }
        }
      }
      
      // 按最后消息时间排序，最新的在前面
      historyList.sort((a, b) => b.lastMessageTime.compareTo(a.lastMessageTime));
      
      setState(() {
        _chatHistoryList = historyList;
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading chat history: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 获取清理后的角色名称（只取空格前的部分）
  String _getCleanCharacterName(String characterId) {
    // 只取空格前的部分
    final cleanName = characterId.split(' ').first.trim();
    
    // 如果清理后为空，返回原始ID
    if (cleanName.isEmpty) {
      return characterId;
    }
    
    return cleanName;
  }

  /// 清除特定角色的聊天历史
  Future<void> _clearChatHistory(String characterId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final historyKey = 'chat_history_$characterId';
      
      await prefs.remove(historyKey);
      
      // 重新加载聊天历史
      await _loadChatHistory();
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Chat history for $_getCleanCharacterName(characterId) has been cleared'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      debugPrint('Error clearing chat history: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to clear chat history'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  /// 显示清除确认对话框
  void _showClearConfirmDialog(String characterId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Clear Chat History',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
            ),
          ),
          content: Text(
            'Are you sure you want to clear all chat history with $_getCleanCharacterName(characterId)? This action cannot be undone.',
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF666666),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xFF007AFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _clearChatHistory(characterId);
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFFFF3B30),
              ),
              child: const Text(
                'Clear',
                style: TextStyle(
                  color: Color(0xFFFF3B30),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// 格式化时间显示
  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
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
              
              // 角色展示区域
              _buildCharacterShowcase(),
              
              // 聊天历史内容区域
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [ 
                      // 聊天历史内容
                      Expanded(
                        child: _isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : _chatHistoryList.isEmpty
                                ? _buildEmptyState()
                                : _buildChatHistoryList(),
                      ),
                      
                      // 底部空白区域
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),

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
          // 标题居中
          Center(
            child: Image.asset(
              'assets/chat_title_20250826.png',
              height: 48,
              width: 100,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'Chat History',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
          
          // 右侧刷新按钮
          if (_chatHistoryList.isNotEmpty)
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: const Icon(Icons.refresh, color: Colors.white),
                onPressed: _loadChatHistory,
              ),
            ),
        ],
      ),
    );
  }

  /// 构建角色展示区域
  Widget _buildCharacterShowcase() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder<String>(
        future: _loadCharacterData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            try {
              final List<dynamic> characters = jsonDecode(snapshot.data!);
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  final character = characters[index];
                  return _buildCharacterItem(character);
                },
              );
            } catch (e) {
              debugPrint('Error parsing character data: $e');
              return _buildCharacterShowcaseError();
            }
          } else if (snapshot.hasError) {
            return _buildCharacterShowcaseError();
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            );
          }
        },
      ),
    );
  }

  /// 加载角色数据
  Future<String> _loadCharacterData() async {
    try {
      final String jsonString = await DefaultAssetBundle.of(context).loadString('assets/people_share_circle.json');
      return jsonString;
    } catch (e) {
      debugPrint('Error loading character data: $e');
      return '[]';
    }
  }

  /// 构建单个角色项
  Widget _buildCharacterItem(Map<String, dynamic> character) {
    final characterName = _getCleanCharacterName(character['VabeUserName'] ?? '');
    final userIcon = character['VabeUserIcon'] ?? '';
    
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          // 角色头像和在线状态点
          GestureDetector(
            onTap: () {
              // 跳转到聊天页面
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PeopleChatPage(
                    character: character,
                  ),
                ),
              );
            },
            child: Stack(
              clipBehavior: Clip.none, // 允许子组件超出Stack边界渲染
              children: [
                // 角色头像本体 (60x60)
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFFFFFFF), // #FFFFFF 白色边框
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // 内部圆角稍小，避免边框重叠
                    child: Image.asset(
                      'assets/$userIcon.png',
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0099F9).withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(10),
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
                
                // 绿色在线状态圆点 - 放在头像外部，不被裁剪
                Positioned(
                  right: -5.5, // 向右偏移半个圆点宽度，使其中心点在头像右边缘
                  bottom: -5.5, // 向下偏移半个圆点高度，使其中心点在头像下边缘
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: const Color(0xFF32FF81),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFFFFFFF), // #FFFFFF 白色边框
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 7),
          
          // 角色名字
          Text(
            characterName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal, // Regular
              color: Color(0xFF000000), // #000000 黑色
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// 构建角色展示区域错误状态
  Widget _buildCharacterShowcaseError() {
    return const Center(
      child: Text(
        'Failed to load characters',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }

  /// 构建空状态显示
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 80,
            color: Colors.white.withValues(alpha: 0.8),
          ),
          const SizedBox(height: 16),
          const Text(
            'No Chat History',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Start chatting with characters to see your history here',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withValues(alpha: 0.8),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// 构建聊天历史列表
  Widget _buildChatHistoryList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _chatHistoryList.length,
      itemBuilder: (context, index) {
        final item = _chatHistoryList[index];
        return _buildChatHistoryItem(item);
      },
    );
  }

  /// 构建单个聊天历史项
  Widget _buildChatHistoryItem(ChatHistoryItem item) {
    return GestureDetector(
      onTap: () {
        // 点击整个项目跳转到聊天页面
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PeopleChatPage(
              character: {
                'VabeUserName': item.characterId,
                'VabeUserIcon': item.userIcon, // 使用正确的头像路径
              },
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(left: 8, top: 8),
        height: 76,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF).withValues(alpha: 0.8), // #FFFFFF alpha 0.8
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // 角色头像
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/${item.userIcon}.png', // 使用正确的头像路径
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0099F9).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center( // 添加Center包装器实现水平居中
                        child: Text(
                          item.characterName.isNotEmpty 
                              ? item.characterName[0].toUpperCase()
                              : 'C',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0099F9),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            
            const SizedBox(width: 10), // 头像右边10px间距
            
            // 角色信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center, // 垂直居中
                children: [
                  // 角色名字
                  Text(
                    item.characterName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500, // Medium
                      color: Color(0xFF333333), // #333333
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  const SizedBox(height: 2), // 减少间距
                  
                  // 最后消息
                  Text(
                    item.lastMessage,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF666666),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  const SizedBox(height:12), // 减少间距
                ],
              ),
            ),
            
            // 右侧操作按钮
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center, // 垂直居中
              children: [
                // 时间 - 右边距21，上边距7
                Padding(
                  padding: const EdgeInsets.only(right: 21, bottom: 21),
                  child: Text(
                    _formatTime(item.lastMessageTime),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// 聊天历史记录项模型
class ChatHistoryItem {
  final String characterId;
  final String characterName;
  final String lastMessage;
  final DateTime lastMessageTime;
  final int messageCount;
  final List<dynamic> historyData;
  final String userIcon; // 新增头像路径字段

  ChatHistoryItem({
    required this.characterId,
    required this.characterName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.messageCount,
    required this.historyData,
    this.userIcon = 'user_default_20250821', // 默认值
  });
}
