import 'package:flutter/material.dart';

class IconPageScreen extends StatelessWidget {
  final List<IconData> icons = [
    Icons.email,
    Icons.mail,
    Icons.message,
    Icons.chat,
    Icons.notifications,
    Icons.alarm,
    // Add more icons here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Icon'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(16.0),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          final icon = icons[index];
          return GestureDetector(
            onTap: () {
              // Handle icon selection here
              Navigator.pop(context); // Close the icon page
            },
            child: Card(
              child: Center(
                child: Icon(icon, size: 40, color: Colors.blue),
              ),
            ),
          );
        },
      ),
    );
  }
}
