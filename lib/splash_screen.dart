import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF00A777),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo/rsud.png",
                width: Get.width * 0.5,
                height: Get.width * 0.5,
              ),
              SizedBox(
                  height: 2), // Sesuaikan dengan jarak vertikal yang diinginkan
              Image.asset(
                "assets/logo/character.png",
                width: Get.width * 0.5,
                height: Get.width * 0.5,
              ),
              SizedBox(
                  height: 2), // Sesuaikan dengan jarak vertikal yang diinginkan
              Image.asset(
                "assets/logo/simanap-text.png",
                width: 350,
                height: Get.width * 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
