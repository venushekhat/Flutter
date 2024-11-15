import 'package:flutter/material.dart';

class TradeAlert extends StatefulWidget {
  const TradeAlert({super.key});

  @override
  State<TradeAlert> createState() => _TradeAlertState();
}

class _TradeAlertState extends State<TradeAlert> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              alignment:
                  Alignment.centerLeft, // Aligns the content to the start
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10), // Add space between icon and text
                  Text(
                    "Live Sessions",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                  Spacer(), // Pushes the chat icon to the end
                  Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10), // Optional spacing below the header
            Expanded(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    const TabBar(
                      tabs: [
                        Tab(text: "Forex"),
                        Tab(text: "Crypto"),
                        Tab(text: "Binary Options"),
                        Tab(text: "Commerce"),
                      ],
                      labelPadding: EdgeInsets.symmetric(horizontal: 5),
                      indicatorColor: Color(0XFFe55733),
                      unselectedLabelColor: Colors.white,
                      labelColor: Color(0XFFe55733),
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: 30),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Container(
                                  height: 570,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 43, 43, 43),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      // Changed Row to Column
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Column containing text
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'USD/CHF',
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
                                                backgroundColor: Colors.red,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 10),
                                              ),
                                              child: const Text(
                                                'Sell Market',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
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
                                          color: const Color.fromARGB(
                                              255, 59, 58, 59),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: const Text(
                                                        "SWISS FRANCE CHART",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: const Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0XFFe55733),
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0XFFe55733),
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0XFFe55733),
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0XFFe55733),
                                                          ),
                                                          Icon(
                                                            Icons.star_half,
                                                            color: Color(
                                                                0XFFe55733),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: const Text(
                                                  "Active",
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 3, 113, 7)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 59, 58, 59),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 65,
                                                    width: 120,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Space between text and icon
                                                        children: [
                                                          // Column with Text widgets
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center, // Center vertically
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start, // Align text to the start (left)
                                                            children: [
                                                              Text(
                                                                'EP',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '0.8626',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          // Icon on the right side
                                                          Icon(
                                                            Icons
                                                                .crop_square_outlined, // Replace with any icon you want
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              //2nd row stack start
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 59, 58, 59),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 65,
                                                    width: 120,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Space between text and icon
                                                        children: [
                                                          // Column with Text widgets
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center, // Center vertically
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start, // Align text to the start (left)
                                                            children: [
                                                              Text(
                                                                'SL',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '0.8626',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          // Icon on the right side
                                                          Icon(
                                                            Icons
                                                                .crop_square_outlined, // Replace with any icon you want
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              //2nd row stack end
                                              // 3rd row stack start
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 59, 58, 59),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 65,
                                                    width: 120,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Space between text and icon
                                                        children: [
                                                          // Column with Text widgets
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center, // Center vertically
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start, // Align text to the start (left)
                                                            children: [
                                                              Text(
                                                                'TP1',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '0.8626',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          // Icon on the right side
                                                          Icon(
                                                            Icons
                                                                .crop_square_outlined, // Replace with any icon you want
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                              // 3rd row stack end
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        // collum stack start
                                        Container(
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 59, 58, 59),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 65,
                                                    width: 120,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Space between text and icon
                                                        children: [
                                                          // Column with Text widgets
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center, // Center vertically
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start, // Align text to the start (left)
                                                            children: [
                                                              Text(
                                                                'EP',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '0.8626',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          // Icon on the right side
                                                          Icon(
                                                            Icons
                                                                .crop_square_outlined, // Replace with any icon you want
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              //2nd row stack start
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 59, 58, 59),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 65,
                                                    width: 120,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Space between text and icon
                                                        children: [
                                                          // Column with Text widgets
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center, // Center vertically
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start, // Align text to the start (left)
                                                            children: [
                                                              Text(
                                                                'SL',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '0.8626',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          // Icon on the right side
                                                          Icon(
                                                            Icons
                                                                .crop_square_outlined, // Replace with any icon you want
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              //2nd row stack end
                                              // 3rd row stack start
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 59, 58, 59),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    height: 65,
                                                    width: 120,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween, // Space between text and icon
                                                        children: [
                                                          // Column with Text widgets
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center, // Center vertically
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start, // Align text to the start (left)
                                                            children: [
                                                              Text(
                                                                'TP1',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Text(
                                                                '0.8626',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),

                                                          // Icon on the right side
                                                          Icon(
                                                            Icons
                                                                .crop_square_outlined, // Replace with any icon you want
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                              // 3rd row stack end
                                            ],
                                          ),
                                        ),
                                        // collum stack end

                                        const SizedBox(
                                            height:
                                                15), // Spacing between the row and the new container
                                        Container(
                                          height: 3, // Adjust height as needed
                                          width: 480,
                                          color: const Color.fromARGB(
                                              255, 59, 58, 59),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),

                                        SizedBox(
                                          width: 370,
                                          height:
                                              230, // You can set the height if needed
                                          child: Image.asset(
                                            "assets/Charts.png",
                                            fit: BoxFit
                                                .cover, // Adjust image scaling (cover, contain, etc.)
                                          ),
                                        )

                                        //codingg hear
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Center(
                            child: Text(
                              "Contact",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Settings",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Commerce",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
