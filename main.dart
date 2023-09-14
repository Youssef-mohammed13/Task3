import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sheikhs/Homescreen.dart';
import 'Homescreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: AnimatedSplashScreen(
  splash: Image.asset("test/assets/mr.png.jpg",fit: BoxFit.cover),
  nextScreen: Homescreen(),
  pageTransitionType: PageTransitionType.bottomToTop,
),
    );
  }
}


