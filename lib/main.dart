import 'package:animation_fundamental/movies_page.dart';
import 'package:animation_fundamental/shimmer_page.dart';
import 'package:animation_fundamental/splash_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShimmerPage(),
    );
  }
}
