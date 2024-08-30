import 'package:bab_7_2/pages/login_page.dart';
import 'package:bab_7_2/utils/user_shared_preferences.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreferences.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
