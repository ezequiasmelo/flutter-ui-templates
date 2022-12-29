import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/commons/constants/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        Navigator.pushReplacementNamed(
          context,
          NamedRoute.home,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/splash.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
