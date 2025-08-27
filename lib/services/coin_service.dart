import 'package:shared_preferences/shared_preferences.dart';

class CoinService {
  static const String _coinsKey = 'user_coins';
  static const int welcomeBonus = 200; // 新用户欢迎奖励金币数量

  /// 获取当前金币余额
  static Future<int> getCurrentCoins() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_coinsKey) ?? welcomeBonus; // 新用户默认100金币
  }

  /// 添加金币
  static Future<bool> addCoins(int amount) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final currentCoins = prefs.getInt(_coinsKey) ?? welcomeBonus;
      final newCoins = currentCoins + amount;
      await prefs.setInt(_coinsKey, newCoins);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// 消费金币
  static Future<bool> spendCoins(int amount) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final currentCoins = prefs.getInt(_coinsKey) ?? welcomeBonus;
      
      if (currentCoins < amount) {
        return false; // 金币不足
      }
      
      final newCoins = currentCoins - amount;
      await prefs.setInt(_coinsKey, newCoins);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// 检查是否有足够的金币
  static Future<bool> hasEnoughCoins(int amount) async {
    final currentCoins = await getCurrentCoins();
    return currentCoins >= amount;
  }

  /// 重置金币余额（用于测试）
  static Future<void> resetCoins() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_coinsKey);
  }
}
