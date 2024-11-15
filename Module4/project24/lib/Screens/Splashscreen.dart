import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project24/Screens/homescreen.dart';

class Tsplash extends StatefulWidget {
  const Tsplash({super.key});

  @override
  State<Tsplash> createState() => _TsplashState();
}

class _TsplashState extends State<Tsplash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Thomestart()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/Vector.png',
          width: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
