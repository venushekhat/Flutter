import 'dart:async';

import 'package:flutter/material.dart';

class ExpirationWidget extends StatefulWidget {
  const ExpirationWidget({super.key});

  @override
  _ExpirationWidgetState createState() => _ExpirationWidgetState();
}

class _ExpirationWidgetState extends State<ExpirationWidget> {
  String currentTime = '';

  @override
  void initState() {
    super.initState();
    updateTime();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTime();
    });
  }

  void updateTime() {
    final now = DateTime.now();
    setState(() {
      currentTime = '${now.hour.toString().padLeft(2, '0')}:'
          '${now.minute.toString().padLeft(2, '0')}:'
          '${now.second.toString().padLeft(2, '0')}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0XFFe55733)),
            color: const Color.fromARGB(255, 59, 58, 59),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 157,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Expiration",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  currentTime,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
