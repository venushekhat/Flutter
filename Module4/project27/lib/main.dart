import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lifecycle Management',
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.blueGrey[800], fontSize: 18),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.deepOrange,
          toolbarTextStyle: TextTheme(
            titleLarge: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ).bodyMedium,
          titleTextStyle: TextTheme(
            titleLarge: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ).titleLarge,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.teal,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
            .copyWith(secondary: Colors.pink)
            .copyWith(surface: Colors.blueGrey[100]),
      ),
      home: LifecycleDemo(),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  @override
  _LifecycleDemoState createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // Register to observe lifecycle changes
    WidgetsBinding.instance.addObserver(this);

    // Use a post-frame callback to ensure context is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showToast('App Initialized');
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // Correctly handle different lifecycle states
    if (state == AppLifecycleState.resumed) {
      _showToast('App Resumed');
    } else if (state == AppLifecycleState.paused) {
      _showToast('App Paused');
    } else if (state == AppLifecycleState.inactive) {
      _showToast('App Inactive');
    } else if (state == AppLifecycleState.detached) {
      _showToast('App Detached');
    }
  }

  @override
  void dispose() {
    // Unregister the observer
    WidgetsBinding.instance.removeObserver(this);
    // Use a post-frame callback to ensure context is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showToast('App Disposed');
    });
    super.dispose();
  }

  void _showToast(String message) {
    // Show Toast
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Lifecycle Management'),
      ),
      body: Center(
        child: Text(
          'Observe lifecycle changes in the logs.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
