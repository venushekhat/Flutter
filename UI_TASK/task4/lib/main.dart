import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Row & Columns",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.white,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 100,
                      width: 800,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      width: 800,
                    ),
                  ],
                ),
                Container(
                  color: Colors.orange,
                  height: 200,
                  width: 800,
                ),
              ],
            ),
            // Spacer between the Row and the black container
            Container(
              height: 395,
              width: double.maxFinite,
              color: Colors.white,
            ),
            Container(
              color: Colors.black,
              height: 70,
              width: double.maxFinite,
            ),
          ],
        ),
      ),
    );
  }
}
