import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF213B52),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width * 0.5,
                height: Get.width * 0.5,
                child: Image.asset("assets/logo/rsud.png"),
              ),
              SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Image.asset("assets/logo/character.png"),
              ),
              SizedBox(
                width: 350,
                height: Get.width * 0.5,
                child: Image.asset("assets/logo/simanap-text.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
