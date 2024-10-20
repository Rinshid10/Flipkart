import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    final namesforCircleAvthar1 = [
      'Top Offer',
      'Grocery',
      'Mobiles',
      'Fashion',
    ];
    final namesforCircleAvthar2 = [
      'Electronics',
      'Home',
      'Personal Care',
      'Appliances',
    ];
    final namesforCircleAvthar3 = [
      'Toys & Baby',
      'Furniture',
      'Flight & Hotels',
      'Insurence'
    ];
    final namesforCircleAvthar4 = [
      'Sports',
      'Nutrition & More',
      'Bike & Car',
      'Gift Cards'
    ];
    final namesforCircleAvthar5 = [
      'Medicienes',
      'Home Services',
      'Self-Back',
      'Iron Box'
    ];
    final imagesForCircleAvathar = [
      'asset/pngtree-offer-text-vector-file-png-image_4360383-removebg-preview.png',
      'asset/images-removebg-preview (2).png',
      'asset/3150P3KQFlL-removebg-preview.png',
      'asset/111518653-children-s-fashion-beautiful-boy-and-girl-in-elegant-clothes-posing-together-at-studio-over-yellow-removebg-preview.png'
    ];
    final imagesForCircleAvathar2 = [
      'asset/lap.png',
      'asset/Decor-Items-For-Contemporary-Home-Decor_0_1200-removebg-preview.png',
      'asset/images__1_-removebg-preview.png',
      'asset/Names-Of-Household-Appliances-In-English-removebg-preview.png'
    ];
    final imagesForCircleAvathar3 = [
      'asset/20e9261364328df9fee291117234bdc8-removebg-preview.png',
      'asset/bed-removebg-preview.png',
      'asset/airplain-removebg-preview.png',
      'asset/insurance.png'
    ];
    final imagesForCircleAvathar4 = [
      'asset/sports-removebg-preview.png',
      'asset/nutritions-removebg-preview.png',
      'asset/bikeandcar-removebg-preview.png',
      'asset/gift-removebg-preview.png',
    ];
    final imagesForCircleAvathar5 = [
      'asset/medicin-removebg-preview.png',
      'asset/homeserviece-removebg-preview.png',
      'asset/sellback-removebg-preview.png',
      'asset/ironbox-removebg-preview.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'All Catogories',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(children: [
            const Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 44,
                            backgroundColor: const Color(0xffc9e7fe),
                            child: ClipOval(
                              child: Image.asset(imagesForCircleAvathar[index]),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            namesforCircleAvthar1[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(15),
            //next rowwwwwwwwwwwwwwwwwwww
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 44,
                            backgroundColor: const Color(0xffc9e7fe),
                            child: ClipOval(
                                child: Image.asset(
                                    imagesForCircleAvathar2[index])),
                          ),
                          Text(
                            namesforCircleAvthar2[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(15),
            //next rowwwwwwwwwwwwwwwwwwww
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 44,
                            backgroundColor: const Color(0xffc9e7fe),
                            child: ClipOval(
                              child:
                                  Image.asset(imagesForCircleAvathar3[index]),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            namesforCircleAvthar3[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(15),
            //next rowwwwwwwwwwwwwwwwwwww
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 44,
                            backgroundColor: const Color(0xffc9e7fe),
                            child: ClipOval(
                              child:
                                  Image.asset(imagesForCircleAvathar4[index]),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            namesforCircleAvthar4[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(15),
            //next rowwwwwwwwwwwwwwwwwwww
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 44,
                            backgroundColor: const Color(0xffc9e7fe),
                            child: ClipOval(
                              child:
                                  Image.asset(imagesForCircleAvathar5[index]),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            namesforCircleAvthar5[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            //next rowwwwwwwwwwwwwwwwwwww
          ]),
        ),
      ),
    );
  }
}
