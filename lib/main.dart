import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jawla_app/screens/SignUp.dart';
import 'package:jawla_app/screens/login_screen.dart';
import 'package:jawla_app/screens/my_navigation_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SignUp(),
      ),
    );
  }
}
