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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            borderRadius: BorderRadius.zero, // Remove border radius
          ),
          contentPadding: const EdgeInsets.all(16.0), // Adjust content padding
          actionsPadding: const EdgeInsets.all(8.0), // Adjust actions padding
          actions: <Widget>[
            Wrap(
              alignment: WrapAlignment.center, // Center buttons
              spacing: 8.0, // Space between buttons
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                      msg: "Negative button pressed",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // No border radius
                    ),
                  ),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                      msg: "Positive button pressed",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // No border radius
                    ),
                  ),
                  child: const Text('OK'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                      msg: "Neutral button pressed",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // No border radius
                    ),
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
