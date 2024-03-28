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
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 170,
              width: double.maxFinite,
              margin: EdgeInsets.all(5),
            ),
            Container(
              child: Row(children: [
                Container(
                  height: 170,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  height: 170,
                  width: 1328,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(5),
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.maxFinite,
              height: 400,
              margin: EdgeInsets.all(5),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.maxFinite,
              height: 90,
              margin: EdgeInsets.all(5),
            ),
          ],
        ),
      ),
    );
  }
}




























// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // backgroundColor: Colors.amber,
//         appBar: AppBar(
//           title: Text(
//             "Container",
//             style: TextStyle(
//                 fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blueGrey,
//         ),
//         body: Container(
//           height: 250,
//           width: double.maxFinite,
//           decoration: BoxDecoration(
//               color: Colors.red,
//               border: Border.all(width: 5, color: Colors.black)),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Text("Hello"),
//               // Text("Hello 2"),
//               Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 2, color: Colors.black)),
//                 margin: EdgeInsets.all(12),
//                 // color: Colors.white,
//                 child: Text("123"),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text("Hello"),
//                   Text("Hello 2"),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }