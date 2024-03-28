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
          backgroundColor: Colors.orange[200],
          appBar: AppBar(
            backgroundColor: Colors.orange[300],
            title: Text("Myapp7"),
          ),
          body: Center(child: Text("This is App 7..")),
        ),
      );
    }
  }
