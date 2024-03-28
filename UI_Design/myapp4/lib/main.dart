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
        backgroundColor: Colors.red[100],
         appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: Text("MyApp4"),
         ),
         body: Center(child: Text("This is Your App 4")),
      ),
    );
  }
}