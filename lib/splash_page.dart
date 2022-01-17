import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animation_fundamental/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 1000,
          splash: const Icon(
            Icons.flutter_dash,
            size: 100,
          ),
          nextScreen: const HomePage()),
    );
  }
}
