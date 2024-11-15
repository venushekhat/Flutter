import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onDrawerItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Navigation Drawer'),
            ),
            ListTile(
              title: const Text('Gallery'),
              onTap: () => _onDrawerItemTapped(0),
            ),
            ListTile(
              title: const Text('Audio'),
              onTap: () => _onDrawerItemTapped(1),
            ),
            ListTile(
              title: const Text('Video'),
              onTap: () => _onDrawerItemTapped(2),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          GalleryPage(),
          AudioPage(),
          VideoPage(),
        ],
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.image),
          title: Text('Gallery Item 1'),
        ),
        ListTile(
          leading: Icon(Icons.image),
          title: Text('Gallery Item 2'),
        ),
        ListTile(
          leading: Icon(Icons.image),
          title: Text('Gallery Item 3'),
        ),
      ],
    );
  }
}

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text('Audio Track 1'),
        ),
        ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text('Audio Track 2'),
        ),
        ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text('Audio Track 3'),
        ),
      ],
    );
  }
}

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.videocam),
          title: Text('Video Clip 1'),
        ),
        ListTile(
          leading: Icon(Icons.videocam),
          title: Text('Video Clip 2'),
        ),
        ListTile(
          leading: Icon(Icons.videocam),
          title: Text('Video Clip 3'),
        ),
      ],
    );
  }
}
