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
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Padding",style: TextStyle(fontWeight: FontWeight.w800),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //first dark line
            Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.green[100],
            ),
            Center(
              child: Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.green[400],
                child: Center(child: Text("First",style: TextStyle(fontSize: 30),)),
              ),
            ),
             Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.green[100],
            ),
         //secound line
          Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.red[100],
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.red[400],
              child: Center(child: Text("Secound",style: TextStyle(fontSize: 30),)),

            ),
             Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.red[100],
            ),
            //white space
             Container(
              height: 70,
              width: double.maxFinite,
              color: Colors.white,
             child: Center(child:Text("50pt",style: TextStyle(fontSize: 30),)),

            ),
            //sky line
            Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.blue[100],
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.blue[400],
              child: Center(child: Text("Third",style: TextStyle(fontSize: 30),)),

            ),
             Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.blue[100],
            ),
            //white space
              Container(
              height: 67,
              width: double.maxFinite,
              color: Colors.white,
                              child: Center(child: Text("Flex - 1",style: TextStyle(fontSize: 30),)),

            ),
            //purple line
            Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.purple[100],
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.purple[400],
              child: Center(child: Text("Fourth",style: TextStyle(fontSize: 30),)),

            ),
             Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.purple[100],
            ),
            //white space
               Container(
              height: 115,
              width: double.maxFinite,
              color: Colors.white,
              child: Center(child: Text("Flex - 2",style: TextStyle(fontSize: 30),)),

            ),
            //brown screen
             Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.brown[100],
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.brown[400],
              child: Center(child: Text("Fifth",style: TextStyle(fontSize: 30),)),

            ),
             Container(
              height: 20,
              width: double.maxFinite,
              color: Colors.brown[100],
            ),
          ],
        ),
      ),
    );
  }
}