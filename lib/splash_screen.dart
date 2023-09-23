import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF00A777),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    16, 70, 16, 16), // Add your desired padding here
                child: Image.asset(
                  "assets/logo/rsud.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.all(16.0), // Add your desired padding here
                child: Image.asset(
                  "assets/logo/character.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    16, 16, 16, 70), // Add your desired padding here
                child: Image.asset(
                  "assets/logo/simanap-text.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
