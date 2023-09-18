import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simanap_mobile/main_screen.dart';
import 'package:simanap_mobile/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "SIMANAP Mobile",
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 5)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return const MainScreen();
          }
        },
      ),
    );
  }
}
