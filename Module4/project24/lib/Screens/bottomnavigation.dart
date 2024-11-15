import 'package:flutter/material.dart';
import 'package:project24/Screens/TaptoTrade.dart';
import 'package:project24/Screens/Tone.dart';
import 'package:project24/Screens/sassions.dart';
import 'package:project24/Screens/time.dart';


class T extends StatefulWidget {
  const T({super.key});

  @override
  State<T> createState() => _TState();
}

class _TState extends State<T> {
  int _currentIndex = 0; // Keeps track of the selected index

  // List of pages corresponding to each tab
  final List<Widget> _pages = [
    const Center(child: Tone()),
    const Center(child: Tsassions()),
    const Center(child: Taptotrade()),
    const Center(child: ExpirationWidget()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page

      // Wrap BottomNavigationBar in a Container to set custom height
      bottomNavigationBar: SizedBox(
        height: 80, // Set your desired height here
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.deepOrange[400],
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the selected index
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sensors_sharp), label: "Sessions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_outlined),
                label: "Trade Alerts"),
            BottomNavigationBarItem(
                icon: Icon(Icons.touch_app_outlined), label: "Tap to Trade"),
          ],
        ),
      ),
    );
  }
}
