
import 'package:flutter/material.dart';

class AudioPage extends StatelessWidget {
  final List<Map<String, String>> audioTracks = [
    {'title': 'Track 1', 'artist': 'Artist 1', 'cover': 'assets/cover1.jpg'},
    {'title': 'Track 2', 'artist': 'Artist 2', 'cover': 'assets/cover2.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: audioTracks.length,
        itemBuilder: (context, index) {
          final track = audioTracks[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(track['cover']!),
            ),
            title: Text(track['title']!),
            subtitle: Text(track['artist']!),
            trailing: Icon(Icons.play_arrow),
            onTap: () {
        
            },
          );
        },
      ),
    );
  }
}
