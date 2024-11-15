import 'dart:async';

import 'package:flutter/material.dart';

class Taptotrade extends StatefulWidget {
  const Taptotrade({super.key});

  @override
  _ExpirationWidgetState createState() => _ExpirationWidgetState();
}

class _ExpirationWidgetState extends State<Taptotrade> {
  String currenttime = '';

  @override
  void initState() {
    super.initState();
    updateTime();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTime();
    });
  }

  void updateTime() {
    final now = DateTime.now();
    setState(() {
      currenttime = '${now.hour.toString().padLeft(2, '0')}:'
          '${now.minute.toString().padLeft(2, '0')}:'
          '${now.second.toString().padLeft(2, '0')}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10), // Add space between icon and text
                    Text(
                      "Tap To Trade",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    Icon(
                      Icons.chat,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              // Main stack box starts here
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Container(
                      height: 400,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 43, 43, 43),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Column containing text
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'XAUUSD',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '2 Days ago',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                // Elevated Button
                                ElevatedButton(
                                  onPressed: () {
                                    // Implement your sell market functionality here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                  child: const Text(
                                    'Buy',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                                height:
                                    10), // Spacing between the row and the new container
                            Container(
                              height: 3, // Adjust height as needed
                              width: 480,
                              color: const Color.fromARGB(255, 59, 58, 59),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  child: const Icon(
                                    Icons.photo_camera_front,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  child: const Text(
                                    "Aurelie Rich Men",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),
                            // 2nd row stack starts
                            Row(
                              children: [
                                // 1st Stack for TP1
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0XFFe55733)),
                                        color: const Color.fromARGB(
                                            255, 59, 58, 59),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 67,
                                      width: 118,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'EP',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '0.8626',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 9),
                                // 2nd Stack for EP
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0XFFe55733)),
                                        color: const Color.fromARGB(
                                            255, 59, 58, 59),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 67,
                                      width: 110,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'SL',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '0.8626',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 9),
                                // 3rd Stack for SL
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0XFFe55733)),
                                        color: const Color.fromARGB(
                                            255, 59, 58, 59),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 67,
                                      width: 106,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'TP',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '0.8626',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            //timing start
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 59, 58, 59),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 137,
                                  width: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Expiration",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                        Text(
                                          currenttime, // Use the currenttime variable here
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 42,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //timing end

                            //2ndbox start

                            //2ndbox start
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //2nd start
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 400,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 43, 43, 43),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Column containing text
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'XAUUSD',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '2 Days ago',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                // Elevated Button
                                ElevatedButton(
                                  onPressed: () {
                                    // Implement your sell market functionality here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                  child: const Text(
                                    'Buy',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                                height:
                                    10), // Spacing between the row and the new container
                            Container(
                              height: 3, // Adjust height as needed
                              width: 480,
                              color: const Color.fromARGB(255, 59, 58, 59),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  child: const Icon(
                                    Icons.photo_camera_front,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  child: const Text(
                                    "Aurelie Rich Men",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),
                            // 2nd row stack starts
                            Row(
                              children: [
                                // 1st Stack for TP1
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0XFFe55733)),
                                        color: const Color.fromARGB(
                                            255, 59, 58, 59),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 67,
                                      width: 118,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'EP',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '0.8626',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.crop_square_outlined,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 9),
                                // 2nd Stack for EP
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0XFFe55733)),
                                        color: const Color.fromARGB(
                                            255, 59, 58, 59),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 67,
                                      width: 110,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'SL',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '0.8626',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 9),
                                // 3rd Stack for SL
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0XFFe55733)),
                                        color: const Color.fromARGB(
                                            255, 59, 58, 59),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 67,
                                      width: 110,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'TP',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '0.8626',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.crop_square_outlined,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            //timing start
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 59, 58, 59),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 137,
                                  width: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Expiration",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                        Text(
                                          currenttime, // Use the currenttime variable here
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 42,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //timing end

                            //2ndbox start

                            //2ndbox start
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //2nd send
            ],
          ),
        ),
      ),
    );
  }
}
