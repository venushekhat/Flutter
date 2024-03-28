import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.brown,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            child: Center(
              child: Text(
                'Sample Text',
                style: TextStyle(fontFamily: 'cursive', fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
