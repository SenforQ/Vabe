import 'package:flutter/material.dart';
import '../utils/blacklist_manager.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

/// 黑名单页面
class BlacklistPage extends StatefulWidget {
  const BlacklistPage({super.key});

  @override
  State<BlacklistPage> createState() => _BlacklistPageState();
}

class _BlacklistPageState extends State<BlacklistPage> {
  List<String> _blockedUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadBlacklistedUsers();
  }

  /// 加载被拉黑的用户列表
  Future<void> _loadBlacklistedUsers() async {
    setState(() => _isLoading = true);
    try {
      final blockedList = await BlacklistManager.getBlockedUsers();
      setState(() {
        _blockedUsers = blockedList.toList();
      });
    } catch (e) {
      debugPrint('Error loading blacklisted users: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  /// 释放用户（从黑名单移除）
  Future<void> _unblockUser(String userId) async {
    try {
      final success = await BlacklistManager.unblockUser(userId);
      if (success) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$userId has been unblocked'), backgroundColor: Colors.green),
          );
          _loadBlacklistedUsers(); // 刷新列表
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to unblock user'), backgroundColor: Colors.red),
          );
        }
      }
    } catch (e) {
      debugPrint('Error unblocking user: $e');
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
              _buildTopBar(),
              Expanded(
                child: _isLoading
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                    : _blockedUsers.isEmpty
                        ? _buildEmptyState()
                        : _buildBlockedUserList(),
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
          Positioned(
            left: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black, // 黑色返回按钮
                size: 24,
              ),
            ),
          ),
          Center(
            child: Text(
              'Blacklist',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
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
            Icons.block,
            size: 80,
            color: Colors.white.withValues(alpha: 0.8),
          ),
          const SizedBox(height: 16),
          const Text(
            'No Blocked Users',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Blocked users will appear here.',
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

  /// 构建被拉黑用户列表
  Widget _buildBlockedUserList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _blockedUsers.length,
      itemBuilder: (context, index) {
        final userId = _blockedUsers[index];
        return _buildBlockedUserItem(userId);
      },
    );
  }

  /// 构建单个被拉黑用户项
  Widget _buildBlockedUserItem(String userId) {
    // 模拟获取用户头像（实际可能需要从API获取或本地资源）
    // 这里简化处理，使用默认头像和ID作为名字
    final userIcon = 'user_default_20250821'; // 假设默认头像
    
    return Container(
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
          // 用户头像
          Container(
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/$userIcon.png',
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
                    child: Center(
                      child: Text(
                        userId.isNotEmpty ? userId[0].toUpperCase() : 'U',
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
          
          // 用户名称
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userId,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF333333),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          
          // 右侧释放按钮
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () => _unblockUser(userId),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.1), // 红色背景，表示移除
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.remove_circle_outline,
                  color: Colors.red,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
