import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              
              width: double.maxFinite,
              decoration: BoxDecoration(color: Color.fromARGB(255, 227, 130, 162)),
            )
          ]),
      ),
    );
  }
}
