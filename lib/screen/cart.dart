import 'package:flipcart/screen/widgetForPages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const Text('Deliver to: Rinshid,676517'),
                  subtitle: const Text(
                    'CHOLLAKAL HOUSE,Melmuri Alathoorpadi',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))),
                      onPressed: () {},
                      child: const Text(
                        'Change',
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
              ),
            ),
            const Divider(),
            containerForCartFirst(
                Giveimage: 'asset/jakrtFlips.jpeg',
                textName1: 'LETECH Full Sleeve Solid Men Jacket',
                textName2: 'Size: Small',
                offerText: '61% off',
                lineThrowText: '₹3,123',
                price: '₹1,200',
                DevileyMonthDayText: 'Delivery by Thu Mar 9 |'),
            const Gap(15),
            const Divider(
              thickness: 5,
            ),
            const Gap(5),
            containerForCartFirst(
                Giveimage: 'asset/wallstiker.jpg',
                textName1: 'WALLSTICK 72cm Life quotes',
                textName2: 'Pack of 1',
                offerText: '75% off',
                lineThrowText: '₹699',
                price: '₹150',
                DevileyMonthDayText: 'Delivery by Mon Apr 29 |'),
            const Gap(15),
            const Divider(
              thickness: 5,
            ),
            const Gap(5),
            containerForCartFirst(
                Giveimage: 'asset/forumlow.jpeg',
                textName1: 'FORUM LOW Shoes (Light Blue)',
                textName2: 'Size: All Size',
                offerText: '55% off',
                lineThrowText: '₹10,999',
                price: '₹8,999',
                DevileyMonthDayText: 'Delivery by Tue Apr 23 |'),
          ],
        )),
      ),
    );
  }
}
