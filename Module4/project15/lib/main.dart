import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          labelLarge:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      home: const Screen15(),
    );
  }
}

class Screen15 extends StatelessWidget {
  const Screen15({super.key});

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an Option'),
          content: const Text('Please select one of the options below.'),
          backgroundColor: Colors.grey[900],
          titleTextStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          contentTextStyle: const TextStyle(color: Colors.white70),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          actionsPadding: const EdgeInsets.all(8.0), 
          actions: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, 
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    print("Cancel button pressed");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                  ),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    print("OK button pressed");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                  ),
                  child: const Text('OK'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    print("Maybe button pressed");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                  ),
                  child: const Text('Maybe'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showCustomDialog(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            textStyle:
                const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}

