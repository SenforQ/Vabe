import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

/// 用户黑名单管理类
class BlacklistManager {
  static const String _keyBlockedUsers = 'blocked_users';
  static const String _keyMutedUsers = 'muted_users';
  
  /// 屏蔽用户
  static Future<bool> blockUser(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final blockedUsers = _getBlockedUsers(prefs);
      
      if (!blockedUsers.contains(userId)) {
        blockedUsers.add(userId);
        await prefs.setString(_keyBlockedUsers, jsonEncode(blockedUsers));
        return true;
      }
      return false;
    } catch (e) {
      print('Error blocking user: $e');
      return false;
    }
  }
  
  /// 拉黑用户
  static Future<bool> muteUser(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final mutedUsers = _getMutedUsers(prefs);
      
      if (!mutedUsers.contains(userId)) {
        mutedUsers.add(userId);
        await prefs.setString(_keyMutedUsers, jsonEncode(mutedUsers));
        return true;
      }
      return false;
    } catch (e) {
      print('Error muting user: $e');
      return false;
    }
  }
  
  /// 解除屏蔽用户
  static Future<bool> unblockUser(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final blockedUsers = _getBlockedUsers(prefs);
      
      if (blockedUsers.contains(userId)) {
        blockedUsers.remove(userId);
        await prefs.setString(_keyBlockedUsers, jsonEncode(blockedUsers));
        return true;
      }
      return false;
    } catch (e) {
      print('Error unblocking user: $e');
      return false;
    }
  }
  
  /// 解除拉黑用户
  static Future<bool> unmuteUser(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final mutedUsers = _getMutedUsers(prefs);
      
      if (mutedUsers.contains(userId)) {
        mutedUsers.remove(userId);
        await prefs.setString(_keyMutedUsers, jsonEncode(mutedUsers));
        return true;
      }
      return false;
    } catch (e) {
      print('Error unmuting user: $e');
      return false;
    }
  }
  
  /// 检查用户是否被屏蔽
  static Future<bool> isUserBlocked(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final blockedUsers = _getBlockedUsers(prefs);
      return blockedUsers.contains(userId);
    } catch (e) {
      print('Error checking if user is blocked: $e');
      return false;
    }
  }
  
  /// 检查用户是否被拉黑
  static Future<bool> isUserMuted(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final mutedUsers = _getMutedUsers(prefs);
      return mutedUsers.contains(userId);
    } catch (e) {
      print('Error checking if user is muted: $e');
      return false;
    }
  }
  
  /// 检查用户是否可以聊天（未被屏蔽且未被拉黑）
  static Future<bool> canChatWithUser(String userId) async {
    final isBlocked = await isUserBlocked(userId);
    final isMuted = await isUserMuted(userId);
    return !isBlocked && !isMuted;
  }
  
  /// 获取所有被屏蔽的用户
  static Future<List<String>> getBlockedUsers() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return _getBlockedUsers(prefs);
    } catch (e) {
      print('Error getting blocked users: $e');
      return [];
    }
  }
  
  /// 获取所有被拉黑的用户
  static Future<List<String>> getMutedUsers() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return _getMutedUsers(prefs);
    } catch (e) {
      print('Error getting muted users: $e');
      return [];
    }
  }
  
  /// 清除所有黑名单数据
  static Future<bool> clearAllBlacklists() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_keyBlockedUsers);
      await prefs.remove(_keyMutedUsers);
      return true;
    } catch (e) {
      print('Error clearing blacklists: $e');
      return false;
    }
  }
  
  /// 从SharedPreferences获取被屏蔽的用户列表
  static List<String> _getBlockedUsers(SharedPreferences prefs) {
    try {
      final blockedUsersString = prefs.getString(_keyBlockedUsers);
      if (blockedUsersString != null && blockedUsersString.isNotEmpty) {
        final List<dynamic> blockedUsersList = jsonDecode(blockedUsersString);
        return blockedUsersList.cast<String>();
      }
    } catch (e) {
      print('Error parsing blocked users: $e');
    }
    return [];
  }
  
  /// 从SharedPreferences获取被拉黑的用户列表
  static List<String> _getMutedUsers(SharedPreferences prefs) {
    try {
      final mutedUsersString = prefs.getString(_keyMutedUsers);
      if (mutedUsersString != null && mutedUsersString.isNotEmpty) {
        final List<dynamic> mutedUsersList = jsonDecode(mutedUsersString);
        return mutedUsersList.cast<String>();
      }
    } catch (e) {
      print('Error parsing muted users: $e');
    }
    return [];
  }
}
