import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
import 'pages/main_tab_page.dart';
import 'utils/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // 初始化用户偏好设置
  await UserPreferences.init();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vabe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFFFFF),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFFFFF),
          foregroundColor: Colors.black87,
          elevation: 0,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
