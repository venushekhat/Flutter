import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  final List<Map<String, String>> videoItems = [
    {'title': 'Video 1', 'thumbnail': 'assets/video1.jpg'},
    {'title': 'Video 2', 'thumbnail': 'assets/video2.jpg'},
  ];

   VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: videoItems.length,
        itemBuilder: (context, index) {
          final video = videoItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(video['thumbnail']!, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    video['title']!,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
