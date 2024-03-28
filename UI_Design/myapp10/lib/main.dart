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
        // backgroundColor: Colors.lightGreen[300],
        appBar: AppBar(
          // backgroundColor: Colors.amber[300],
          title: Text("MyApp10"),
        ),
        body: Container(
          child: Column(
            children: [Container(
              color: Colors.amber,
              height: 200,
              width: double.maxFinite,
            ),
            Container(
              color: Colors.brown,
              height: 200,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Container(
                         color: Colors.pink,
                         height: 100,
                         width: 100,
                  ),
                  Container(
                     color: Colors.lightBlue,
                         height: 100,
                         width: 100,
                  ),
                 ],
              ),
            )
            ],
          
          ),
        ),
      ),
    );
  }
}