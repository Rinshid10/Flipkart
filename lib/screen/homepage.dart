import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colorForFirstContainer = Colors.white30;
  var colorForText = Colors.black;
  var colorForFirstContainer2 = Colors.white30;
  var colorForText2 = Colors.black;

  final nameForContainers1 = [
    'Laptop Deals\nFrom Rs 13,990',
    'Extra 75 off\nSale is Live',
    'Bt Calling 1.83\nSale Price 1,499'
  ];

  final imagesForCarossil = [
    'asset/flipcr1.png',
    'asset/flipcr2.png',
    'asset/flipcr3.png',
  ];
  final imagesForCircleAvathar = [
    'asset/credit_prev_ui.png',
    'asset/coupens_prev_ui.png',
    'asset/groupbuy_prev_ui.png',
    'asset/plus.png',
    'asset/supercoin.png',
  ];
  final namesForcircleAvathar = [
    'Credit',
    'Coupons',
    'Group Buy',
    'Plus',
    'SuperCoin',
  ];
  final imagesForlineranContainer = [
    'asset/laptop_prev_ui.png',
    'asset/teapowder_prev_ui.png',
    'asset/smartWatch_prev_ui.png',
  ];
  final imagesForlastContainers = [
    'asset/mushhh.png',
    'asset/amulPowd-removebg-preview.png',
    'asset/tair-removebg-preview.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        colorForFirstContainer = Colors.blue;
                        colorForText = Colors.white;
                        colorForFirstContainer2 = Colors.white;
                        colorForText2 = Colors.black;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorForFirstContainer,
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 175,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/flipkartIcon-removebg-preview.png',
                            height: 30,
                          ),
                          Text(
                            'Flipkart',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: colorForText),
                          )
                        ],
                      ),
                    ),
                  ),
                  //nextContainer
                  InkWell(
                    onTap: () {
                      setState(() {
                        colorForFirstContainer2 = Colors.blue;
                        colorForText2 = Colors.white;
                        colorForFirstContainer = Colors.white;
                        colorForText = Colors.black;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorForFirstContainer2,
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 175,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/flipiconforGR-removebg-preview.png',
                            height: 40,
                          ),
                          Text(
                            'Grocery',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: colorForText2),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 60,
                    height: 50,
                    child: Image.asset(
                      'asset/brandMall.png',
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 0.1)),
                          filled: true,
                          fillColor: Color(0xfff5f7fa),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for Products',
                          contentPadding: EdgeInsets.all(5),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              //carosable scrolllll
              CarouselSlider(
                items: imagesForCarossil.map((imagePath) {
                  return SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  autoPlay: true,
                  height: 200,
                ),
              ),
              const Gap(10),
              //circle avathaarrrrr
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 37,
                            backgroundColor: const Color(0xfff0f5ff),
                            child: ClipOval(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  imagesForCircleAvathar[index],
                                ),
                              ),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            namesForcircleAvathar[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                )),
              ),
              //containersss
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 200,
                        width: 180,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 130,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10)),
                                      gradient: LinearGradient(colors: [
                                        Color(0xfff6a0dc),
                                        Color(0xff53abf0)
                                      ])),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffe7ecff),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 20,
                                      child: Image.asset(
                                          imagesForlineranContainer[index]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xfff1f3ff),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              height: 70,
                              child: Center(
                                  child: Text(
                                nameForContainers1[index],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        )),
                      ),
                    );
                  },
                )),
              ),
              // nextttt
              const Gap(10),
              const Row(
                children: [
                  Text(
                    'Recently Viewed Stores',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ],
              ),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: containerForlast(
                        imagePath: imagesForlastContainers[index],
                      ),
                    );
                  },
                )),
              )
            ],
          ),
        )),
      ),
    );
  }
}

Widget containerForlast({required String imagePath}) {
  return Column(
    children: [
      Container(
        height: 200,
        width: 190,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black87, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(imagePath),
        ),
      ),
      const Gap(10),
    ],
  );
}
