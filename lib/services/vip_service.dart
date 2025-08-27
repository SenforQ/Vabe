import 'package:shared_preferences/shared_preferences.dart';

/// VIP服务类，管理VIP订阅状态
class VipService {
  static const String _vipActiveKey = 'vip_active';
  static const String _vipProductIdKey = 'vip_product_id';
  static const String _vipPurchaseDateKey = 'vip_purchase_date';
  static const String _vipExpiryDateKey = 'vip_expiry_date';

  /// 检查VIP是否激活
  static Future<bool> isVipActive() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_vipActiveKey) ?? false;
    } catch (e) {
      print('VipService - Error checking VIP status: $e');
      return false;
    }
  }

  /// 检查VIP是否过期
  static Future<bool> isVipExpired() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final expiryDateString = prefs.getString(_vipExpiryDateKey);
      
      if (expiryDateString == null) {
        return true; // 没有过期日期，认为已过期
      }
      
      final expiryDate = DateTime.parse(expiryDateString);
      final now = DateTime.now();
      
      return now.isAfter(expiryDate);
    } catch (e) {
      print('VipService - Error checking VIP expiry: $e');
      return true; // 出错时认为已过期
    }
  }

  /// 激活VIP
  static Future<bool> activateVip({
    required String productId,
    required String purchaseDate,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final now = DateTime.now();
      
      // 根据产品ID设置过期时间
      DateTime expiryDate;
      if (productId == 'MochWeekVIP') {
        expiryDate = now.add(const Duration(days: 7));
      } else if (productId == 'MochMonthVIP') {
        expiryDate = now.add(const Duration(days: 30));
      } else {
        // 默认7天
        expiryDate = now.add(const Duration(days: 7));
      }
      
      await prefs.setBool(_vipActiveKey, true);
      await prefs.setString(_vipProductIdKey, productId);
      await prefs.setString(_vipPurchaseDateKey, purchaseDate);
      await prefs.setString(_vipExpiryDateKey, expiryDate.toIso8601String());
      
      return true;
    } catch (e) {
      print('VipService - Error activating VIP: $e');
      return false;
    }
  }

  /// 停用VIP
  static Future<bool> deactivateVip() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_vipActiveKey, false);
      await prefs.remove(_vipProductIdKey);
      await prefs.remove(_vipPurchaseDateKey);
      await prefs.remove(_vipExpiryDateKey);
      
      return true;
    } catch (e) {
      print('VipService - Error deactivating VIP: $e');
      return false;
    }
  }

  /// 获取VIP产品ID
  static Future<String?> getVipProductId() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_vipProductIdKey);
    } catch (e) {
      print('VipService - Error getting VIP product ID: $e');
      return null;
    }
  }

  /// 获取VIP购买日期
  static Future<String?> getVipPurchaseDate() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_vipPurchaseDateKey);
    } catch (e) {
      print('VipService - Error getting VIP purchase date: $e');
      return null;
    }
  }

  /// 获取VIP过期日期
  static Future<String?> getVipExpiryDate() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_vipExpiryDateKey);
    } catch (e) {
      print('VipService - Error getting VIP expiry date: $e');
      return null;
    }
  }

  /// 获取VIP剩余天数
  static Future<int> getVipRemainingDays() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final expiryDateString = prefs.getString(_vipExpiryDateKey);
      
      if (expiryDateString == null) {
        return 0;
      }
      
      final expiryDate = DateTime.parse(expiryDateString);
      final now = DateTime.now();
      
      if (now.isAfter(expiryDate)) {
        return 0;
      }
      
      return expiryDate.difference(now).inDays;
    } catch (e) {
      print('VipService - Error getting VIP remaining days: $e');
      return 0;
    }
  }

  /// 重置VIP状态（用于测试）
  static Future<bool> resetVip() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_vipActiveKey);
      await prefs.remove(_vipProductIdKey);
      await prefs.remove(_vipPurchaseDateKey);
      await prefs.remove(_vipExpiryDateKey);
      
      return true;
    } catch (e) {
      print('VipService - Error resetting VIP: $e');
      return false;
    }
  }
}
