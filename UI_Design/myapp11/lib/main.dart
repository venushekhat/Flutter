import 'package:flutter/material.dart';
// import 'package:myapp11/Screen/Home.dart';
import 'package:myapp11/Screen/Sample.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTextfields(),
    );
  }
}