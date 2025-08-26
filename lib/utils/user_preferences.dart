import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// User Preferences Management Utility Class
/// Responsible for persistent storage and retrieval of user data
class UserPreferences {
  // Storage key constants
  static const String _keyUserAvatar = 'user_avatar';
  static const String _keyUserNickname = 'user_nickname';
  static const String _keyUserSignature = 'user_signature';
  static const String _keyUserEmail = 'user_email';
  static const String _keyUserBirthday = 'user_birthday';
  static const String _keyUserGender = 'user_gender';
  static const String _keyFirstLaunch = 'first_launch';
  
  // Default value constants
  static const String defaultNickname = 'Vabe_218';
  static const String defaultSignature = 'No personal signature';
  static const String defaultEmail = '';
  static const String defaultBirthday = '';
  static const String defaultGender = '';
  
  static SharedPreferences? _prefs;

  /// Initialize SharedPreferences instance
  static Future<void> init() async {
    try {
      _prefs = await SharedPreferences.getInstance();

    } catch (e) {
      debugPrint('Error initializing UserPreferences: $e');
    }
  }

  /// Get SharedPreferences instance
  static Future<SharedPreferences> get _instance async {
    if (_prefs != null) return _prefs!;
    await init();
    return _prefs!;
  }

  // ==================== User Avatar Related ====================

  /// Save user avatar path
  static Future<bool> setUserAvatar(String? avatarPath) async {
    try {
      final prefs = await _instance;
      if (avatarPath != null && avatarPath.isNotEmpty) {
        final result = await prefs.setString(_keyUserAvatar, avatarPath);

        return result;
      } else {
        final result = await prefs.remove(_keyUserAvatar);

        return result;
      }
    } catch (e) {
      debugPrint('Error saving user avatar: $e');
      return false;
    }
  }

  /// Get user avatar path
  static Future<String?> getUserAvatar() async {
    try {
      final prefs = await _instance;
      final avatarPath = prefs.getString(_keyUserAvatar);

      return avatarPath;
    } catch (e) {
      debugPrint('Error loading user avatar: $e');
      return null;
    }
  }

  // ==================== User Nickname Related ====================

  /// Save user nickname
  static Future<bool> setUserNickname(String nickname) async {
    try {
      final prefs = await _instance;
      final result = await prefs.setString(_keyUserNickname, nickname);
      
      return result;
    } catch (e) {
      debugPrint('Error saving user nickname: $e');
      return false;
    }
  }

  /// Get user nickname
  static Future<String> getUserNickname() async {
    try {
      final prefs = await _instance;
      final nickname = prefs.getString(_keyUserNickname) ?? defaultNickname;

      return nickname;
    } catch (e) {
      debugPrint('Error loading user nickname: $e');
      return defaultNickname;
    }
  }

  // ==================== User Signature Related ====================

  /// Save user signature
  static Future<bool> setUserSignature(String signature) async {
    try {
      final prefs = await _instance;
      final result = await prefs.setString(_keyUserSignature, signature);
      debugPrint('User signature saved: $signature');
      return result;
    } catch (e) {
      debugPrint('Error saving user signature: $e');
      return false;
    }
  }

  /// Get user signature
  static Future<String> getUserSignature() async {
    try {
      final prefs = await _instance;
      final signature = prefs.getString(_keyUserSignature) ?? defaultSignature;
      debugPrint('User signature loaded: $signature');
      return signature;
    } catch (e) {
      debugPrint('Error loading user signature: $e');
      return defaultSignature;
    }
  }

  // ==================== User Email Related ====================

  /// Save user email
  static Future<bool> setUserEmail(String email) async {
    try {
      final prefs = await _instance;
      final result = await prefs.setString(_keyUserEmail, email);
      debugPrint('User email saved: $email');
      return result;
    } catch (e) {
      debugPrint('Error saving user email: $e');
      return false;
    }
  }

  /// Get user email
  static Future<String> getUserEmail() async {
    try {
      final prefs = await _instance;
      final email = prefs.getString(_keyUserEmail) ?? defaultEmail;
      debugPrint('User email loaded: $email');
      return email;
    } catch (e) {
      debugPrint('Error loading user email: $e');
      return defaultEmail;
    }
  }

  // ==================== User Birthday Related ====================

  /// Save user birthday
  static Future<bool> setUserBirthday(String birthday) async {
    try {
      final prefs = await _instance;
      final result = await prefs.setString(_keyUserBirthday, birthday);
      debugPrint('User birthday saved: $birthday');
      return result;
    } catch (e) {
      debugPrint('Error saving user birthday: $e');
      return false;
    }
  }

  /// Get user birthday
  static Future<String> getUserBirthday() async {
    try {
      final prefs = await _instance;
      final birthday = prefs.getString(_keyUserBirthday) ?? defaultBirthday;
      debugPrint('User birthday loaded: $birthday');
      return birthday;
    } catch (e) {
      debugPrint('Error loading user birthday: $e');
      return defaultBirthday;
    }
  }

  // ==================== User Gender Related ====================

  /// Save user gender
  static Future<bool> setUserGender(String gender) async {
    try {
      final prefs = await _instance;
      final result = await prefs.setString(_keyUserGender, gender);
      debugPrint('User gender saved: $gender');
      return result;
    } catch (e) {
      debugPrint('Error saving user gender: $e');
      return false;
    }
  }

  /// Get user gender
  static Future<String> getUserGender() async {
    try {
      final prefs = await _instance;
      final gender = prefs.getString(_keyUserGender) ?? defaultGender;
      debugPrint('User gender loaded: $gender');
      return gender;
    } catch (e) {
      debugPrint('Error loading user gender: $e');
      return defaultGender;
    }
  }

  // ==================== App Launch Related ====================

  /// Set whether it's the first launch
  static Future<bool> setFirstLaunch(bool isFirstLaunch) async {
    try {
      final prefs = await _instance;
      final result = await prefs.setBool(_keyFirstLaunch, isFirstLaunch);
      debugPrint('First launch flag set: $isFirstLaunch');
      return result;
    } catch (e) {
      debugPrint('Error setting first launch flag: $e');
      return false;
    }
  }

  /// Check if it's the first launch
  static Future<bool> isFirstLaunch() async {
    try {
      final prefs = await _instance;
      final isFirst = prefs.getBool(_keyFirstLaunch) ?? true;
      debugPrint('Is first launch: $isFirst');
      return isFirst;
    } catch (e) {
      debugPrint('Error checking first launch: $e');
      return true;
    }
  }

  // ==================== Batch Operations ====================

  /// Save all user information
  static Future<bool> saveUserProfile({
    String? avatarPath,
    required String nickname,
    required String signature,
    String? email,
    String? birthday,
    String? gender,
  }) async {
    try {
      final avatarResult = await setUserAvatar(avatarPath);
      final nicknameResult = await setUserNickname(nickname);
      final signatureResult = await setUserSignature(signature);
      final emailResult = await setUserEmail(email ?? '');
      final birthdayResult = await setUserBirthday(birthday ?? '');
      final genderResult = await setUserGender(gender ?? '');
      
      final success = avatarResult && nicknameResult && signatureResult && 
                     emailResult && birthdayResult && genderResult;
      debugPrint('User profile saved successfully: $success');
      return success;
    } catch (e) {
      debugPrint('Error saving user profile: $e');
      return false;
    }
  }

  /// Get all user information
  static Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final avatarPath = await getUserAvatar();
      final nickname = await getUserNickname();
      final signature = await getUserSignature();
      final email = await getUserEmail();
      final birthday = await getUserBirthday();
      final gender = await getUserGender();
      
      final profile = {
        'avatarPath': avatarPath,
        'nickname': nickname,
        'signature': signature,
        'email': email,
        'birthday': birthday,
        'gender': gender,
      };
      
      debugPrint('User profile loaded: $profile');
      return profile;
    } catch (e) {
      debugPrint('Error loading user profile: $e');
      return {
        'avatarPath': null,
        'nickname': defaultNickname,
        'signature': defaultSignature,
        'email': defaultEmail,
        'birthday': defaultBirthday,
        'gender': defaultGender,
      };
    }
  }

  // ==================== Data Cleanup ====================

  /// Clear all user data
  static Future<bool> clearAllUserData() async {
    try {
      final prefs = await _instance;
      final keys = [_keyUserAvatar, _keyUserNickname, _keyUserSignature, 
                     _keyUserEmail, _keyUserBirthday, _keyUserGender];
      
      bool allSuccess = true;
      for (String key in keys) {
        final result = await prefs.remove(key);
        if (!result) allSuccess = false;
      }
      
      debugPrint('All user data cleared: $allSuccess');
      return allSuccess;
    } catch (e) {
      debugPrint('Error clearing user data: $e');
      return false;
    }
  }

  /// Reset to default values
  static Future<bool> resetToDefault() async {
    try {
      await clearAllUserData();
      final result = await saveUserProfile(
        avatarPath: null,
        nickname: defaultNickname,
        signature: defaultSignature,
        email: defaultEmail,
        birthday: defaultBirthday,
        gender: defaultGender,
      );
      
      debugPrint('User data reset to default: $result');
      return result;
    } catch (e) {
      debugPrint('Error resetting user data: $e');
      return false;
    }
  }

  // ==================== Debug and Utility Methods ====================

  /// Get all saved key-value pairs (for debugging)
  static Future<Map<String, dynamic>> getAllPreferences() async {
    try {
      final prefs = await _instance;
      final keys = prefs.getKeys();
      final Map<String, dynamic> allPrefs = {};
      
      for (String key in keys) {
        allPrefs[key] = prefs.get(key);
      }
      
      debugPrint('All preferences: $allPrefs');
      return allPrefs;
    } catch (e) {
      debugPrint('Error getting all preferences: $e');
      return {};
    }
  }

  /// Check storage space usage
  static Future<Map<String, int>> getStorageInfo() async {
    try {
      final prefs = await _instance;
      final keys = prefs.getKeys();
      
      int totalKeys = keys.length;
      int userDataKeys = 0;
      
      for (String key in keys) {
        if (key.startsWith('user_')) {
          userDataKeys++;
        }
      }
      
      final info = {
        'totalKeys': totalKeys,
        'userDataKeys': userDataKeys,
      };
      
      debugPrint('Storage info: $info');
      return info;
    } catch (e) {
      debugPrint('Error getting storage info: $e');
      return {'totalKeys': 0, 'userDataKeys': 0};
    }
  }
}
