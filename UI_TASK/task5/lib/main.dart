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
          backgroundColor: Colors.orange,
          title: Text("Row / Col",style: TextStyle(fontWeight: FontWeight.w900),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: 2,
              width: double.maxFinite,
            ),
            Container(
              color: Colors.orange,
              height: 80,
            
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                        margin: EdgeInsets.all(7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Layout",style: TextStyle(fontWeight: FontWeight.w600),),
                        Text("Main Axis Alignment",style: TextStyle(fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("row",style: TextStyle(fontWeight: FontWeight.w900),),
                        Text("space around",style: TextStyle(fontWeight: FontWeight.w900),),
                      ]),
                  ),
                ],
              )
            ),
              Container(
              color: Colors.black,
              height: 2,
              width: double.maxFinite,
            ),
             Container(
              color: Colors.orange,
              height: 80,
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                  margin: EdgeInsets.all(12),
                    child: 
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Main Axis Size",style: TextStyle(fontWeight: FontWeight.w600),),
                        Text("Cross Axis Alignment",style: TextStyle(fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Max",style: TextStyle(fontWeight: FontWeight.w900),),
                        Text("stretch",style: TextStyle(fontWeight: FontWeight.w900),),
                      ]),
                  )
                ]),
            ),
             Container(
              color: Colors.amber,
              height: 539,
              width: double.maxFinite,
            ),
          ],
        ),
      ),
    );
  }
}