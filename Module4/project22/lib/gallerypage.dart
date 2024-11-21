import 'package:flutter/material.dart';


class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 20, 
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blueGrey[200],
              child: Center(
                child: Text(
                  'Image ${index + 1}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
