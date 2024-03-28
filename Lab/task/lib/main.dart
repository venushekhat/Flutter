import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.purple,
                height: 200,
                width: double.maxFinite,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      color: Colors.pink,
                      height: 250,
                      width: 800,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.green,
                            height: 150,
                            width: 800,
                          ),
                            Container(
                            color: Colors.yellow,
                            height: 100,
                            width: 800,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                      height: 250,
                      width: double.maxFinite,
                      color: Colors.red,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
