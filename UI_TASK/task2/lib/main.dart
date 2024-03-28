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
        body: Column(
          children: [
            Container(
              color: Colors.purple,
              width: double.maxFinite,
              height: 350,
              margin: EdgeInsets.all(5),
            ),
            Container(
              child: Row(children: [
                Container(
                  height: 300,
                  width: 800,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  child: Column(children: [
                    Container(
                      height: 83,
                      width: 777,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 203,
                      width: 777,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ]),
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.maxFinite,
              height: 190,
              margin: EdgeInsets.all(5),
            )
          ],
        ),
      ),
    );
  }
}
