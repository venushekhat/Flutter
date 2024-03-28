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
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(2)),
                  child: const Center(
                      child: Text(
                    "Strawberry Pavlova",
                    style: TextStyle(fontSize: 30),
                  )),
                ),
               const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(2)),
                  child: const Center(
                      child: Text(
                    "Pavlova is a meringue- based deserts named after the russian ballerian Anna Pavlova. Pavlova features a crisp crust and soft,light inside,looped with fruit and wipped cream",
                    style: TextStyle(fontSize: 25),
                  )),
                ),
                 const SizedBox(
                  height: 5,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(2)),
                      child: const Center(
                      child: Text(
                    "* * * * *       170 reviews",
                    style: TextStyle(fontSize: 30),
                  )),
                      )
                    ],
                  ),
                ),
                //3 varu start
                Container(
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                        child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                          child: Icon(Icons.ac_unit_rounded),
                        )]),
                      ),
                      Container(
                        child: Row(
                          children: [
                          Container(
                          child: Icon(Icons.ac_unit_rounded),
                        )]),
                      ),
                      Container(
                        child: Row(
                          children: [
                          Container(
                          child: Icon(Icons.ac_unit_rounded),
                        )]),
                      ),
                      
                      ]
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
