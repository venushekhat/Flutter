import 'package:flutter/material.dart';

class Tsassions extends StatefulWidget {
  const Tsassions({super.key});

  @override
  State<Tsassions> createState() => _TsassionsState();
}

class _TsassionsState extends State<Tsassions> {
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
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "Live Sessions",
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

              const SizedBox(
                height: 0,
              ), // Add some spacing
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 35,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: Row(
                        children: List.generate(5, (index) {
                          List<String> texts = [
                            "All Languages",
                            "English",
                            "Spanish",
                            "French",
                            "German",
                            "Chinese"
                          ];
                          const SizedBox(width: 10);
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 20),
                            decoration: BoxDecoration(
                              color: const Color(0XFF291600),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                texts[index],
                                style: const TextStyle(
                                  color: Color(0XFFE55733),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15),
                child: Container(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromARGB(
                                  255, 91, 91, 91), // Set the background color
                            ),
                            height: 52,
                            width: 55,
                            child: const Column(
                              children: [
                                Text(
                                  "Sep",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                Text(
                                  "17",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: const Text(
                          "Todays Sessions",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 0),
                        child: Container(
                          height: 280,
                          width: 3,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 91, 91, 91),
                            borderRadius: BorderRadius.circular(
                                10), // Apply border radius
                          ),
                        ),
                      ),
                      //main box start
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 280,
                              width: 280,
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 75,
                                  ),
                                  const Text(
                                    "Brent Badal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Nas100 & Gold",
                                    style: TextStyle(
                                        color: Colors.deepOrange[400],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Your gateway to mastering Forex and Crypto trading. Our platform",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "Spanish",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                child: Container(
                              height: 60,
                              width: 280,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 75, 53, 45),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(10))),
                            )),
                            const Positioned(
                                top: 25,
                                left: 20,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.grey,
                                  ),
                                ))
                          ],
                        ),
                      ), //main box end
                      const SizedBox(
                        width: 10,
                      ),
                      //secound main box start
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Stack(
                          children: [
                            Container(
                              height: 280,
                              width: 280,
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 75,
                                  ),
                                  const Text(
                                    "Brent Badal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Nas100 & Gold",
                                    style: TextStyle(
                                        color: Colors.deepOrange[400],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Your gateway to mastering Forex and Crypto trading. Our platform",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "Spanish",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                child: Container(
                              height: 60,
                              width: 280,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 75, 53, 45),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(10))),
                            )),
                            const Positioned(
                                top: 25,
                                left: 20,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.grey,
                                  ),
                                ))
                          ],
                        ),
                      ), //main box end
                      //secound main box  end
                    ],
                  ),
                ),
              ),

              //niche vala start
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15),
                child: Container(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color.fromARGB(
                                  255, 91, 91, 91), // Set the background color
                            ),
                            height: 52,
                            width: 55,
                            child: const Column(
                              children: [
                                Text(
                                  "Sep",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                Text(
                                  "19",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: const Text(
                          "Todays Sessions",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 0),
                        child: Container(
                          height: 280,
                          width: 3,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 91, 91, 91),
                            borderRadius: BorderRadius.circular(
                                10), // Apply border radius
                          ),
                        ),
                      ),
                      //main box start
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 280,
                              width: 280,
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 75,
                                  ),
                                  const Text(
                                    "Brent Badal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Nas100 & Gold",
                                    style: TextStyle(
                                        color: Colors.deepOrange[400],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Your gateway to mastering Forex and Crypto trading. Our platform",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "Spanish",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                child: Container(
                              height: 60,
                              width: 280,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 75, 53, 45),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(10))),
                            )),
                            const Positioned(
                                top: 25,
                                left: 20,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.grey,
                                  ),
                                ))
                          ],
                        ),
                      ), //main box end
                      const SizedBox(
                        width: 10,
                      ),
                      //secound main box start
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Stack(
                          children: [
                            Container(
                              height: 280,
                              width: 280,
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 75,
                                  ),
                                  const Text(
                                    "Brent Badal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Nas100 & Gold",
                                    style: TextStyle(
                                        color: Colors.deepOrange[400],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Your gateway to mastering Forex and Crypto trading. Our platform",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                      ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Color.fromARGB(
                                                          209, 62, 38, 31))),
                                          onPressed: () {},
                                          child: Text(
                                            "Spanish",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                child: Container(
                              height: 60,
                              width: 280,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 75, 53, 45),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(10))),
                            )),
                            const Positioned(
                                top: 25,
                                left: 20,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.grey,
                                  ),
                                ))
                          ],
                        ),
                      ), //main box end
                      //secound main box  end
                    ],
                  ),
                ),
              ),

              //niche vala end
            ],
          ),
        ),
      ),
    );
  }
}
