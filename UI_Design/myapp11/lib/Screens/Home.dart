import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.pink,
                child: Image.network("https://plus.unsplash.com/premium_photo-1664392104299-cb8ace591863?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3RhY2t8ZW58MHx8MHx8fDA%3D",fit: BoxFit.fitWidth,),
              ),
              Container(
                height: 350,
                width: double.maxFinite,
                color: Colors.yellow,
                child: Image.asset("assets/tom&jerray.jpg"),
              ),
               Container(
                height: 750,
                width: double.maxFinite,
                color: Colors.pink,
                child: Lottie.asset(
                "assets/a.json",
              height: 200, 
              width: 200, 
  ),
),


        ]),
      ),
       )) );
  }
}
