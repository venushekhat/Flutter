import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Tone extends StatefulWidget {
  const Tone({super.key});

  @override
  State<Tone> createState() => _ToneState();
}

class _ToneState extends State<Tone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/Vector.png',
                          width: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: const Icon(
                          Icons.chat,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFF181717),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 220,
                    width: 370,
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.white,
                                child: const Center(
                                  child: Icon(
                                    Icons.photo_size_select_actual,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Roger Mark',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Mark.rog@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0XFF333333),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6.0),
                              child: const Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 3),
                          child: Text(
                            '\$4,820',
                            style: TextStyle(
                              color: Color(0XFFe55733),
                              fontSize: 37,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFF353434),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'Connect Trading Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0XFF291814),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 190,
                    width: 370,
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align to the start
                      children: [
                        const Text(
                          'Refer 3 Friends, Get a free Membership',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                            height: 10), // Space between text and icons
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Icon(
                                      Icons.photo_size_select_actual,
                                      color: Colors.grey,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 45,
                                child: Container(
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFe55733),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: const Color(0XFF2e201c),
                                  child: const Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 45,
                                child: Container(
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFF353434),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: const Color(0XFF2e201c),
                                  child: const Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 45,
                                child: Container(
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFF353434),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: const Color(0XFF2e201c),
                                  child: const Center(
                                    child: Icon(
                                      Icons.currency_pound,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              // Use Expanded to allow button to resize
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF353434),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'akashx.com/rogermark',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            6), // Space between icon and text
                                    Icon(
                                      Icons.square_foot,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10), // Space between buttons
                            ElevatedButton(
                              onPressed: () {
                                // Add your share action here
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color(0XFFe55733), // Orange color
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 27),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Center(
                    child: Text(
                  "Calculate Your Risk",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Use the slider below to calculate what you could \n have made if you took every singel last week",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                ),
              ),
              //circular rounded liner start
              const SizedBox(
                height: 0,
              ),
              SizedBox(
                height: 270, 
                
                width: 300, 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SleekCircularSlider(
                      initialValue: 50,
                      min: 0,
                      max: 100,
                      appearance: CircularSliderAppearance(
                        customWidths: CustomSliderWidths(
                          trackWidth: 20, 
                          progressBarWidth: 20, 
                        ),
                        customColors: CustomSliderColors(
                          trackColor:
                              Colors.grey[900], 
                          progressBarColor:
                              Colors.deepOrange[400], 
                          dotColor:
                              Colors.transparent, 
                        ),
                        size: 220, 
                      ),
                      innerWidget: (value) {
                        return const Center(
                          child: Text(
                            '\$140', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              )

              //circular rounded liner end
            ],
          ),
        ),
      ),
    );
  }
}
