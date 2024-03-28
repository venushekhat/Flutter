import 'package:flutter/material.dart';
import 'Home.dart'; // Adjust the import statement based on the actual file path

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Page(),
    );
  }
}
