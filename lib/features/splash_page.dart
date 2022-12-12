import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          "assets/image/splash.png",
          fit: BoxFit.cover,
          height: 300.0,
        ),
      ),
    );
  }
}
