import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text("MyApp3"),),
      body: Center(child: Text("This is your app3")),
      ),
    );
  }
}4