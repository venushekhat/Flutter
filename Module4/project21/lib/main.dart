import 'package:flutter/material.dart';
import 'package:project21/InboxScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Clone',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: InboxScreen(),
    );
  }
}
