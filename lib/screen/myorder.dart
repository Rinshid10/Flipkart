import 'package:flipcart/screen/widgetForPages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'My Orders',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 40,
                    width: 230,
                    // color: Colors.yellow,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search your order here..',
                          hintStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_list,
                          color: Colors.black,
                          size: 30,
                        ),
                        Gap(5),
                        Text(
                          'Fliters',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(10),
            const Divider(
              thickness: 2,
            ),
            const Gap(10),
            //next.............
            ListTileforOrders(
                imagePath: 'asset/ip15-removebg-preview.png',
                title: 'Deleverd on Dec 29,2022',
                subtitle: 'iphone 15 (Titanium Black)'),
            const Gap(25),
            ListTileforOrders(
              imagePath: 'asset/discoveryPlus-removebg-preview.png',
              title: 'Deleverd on Dec 26,2022',
              subtitle: 'Free Discocvery+25%off on anual subsi',
            ),
            const Gap(10),
            containeForCostumers(),
            const Gap(20),
            const Divider(),
            const Gap(10),
            ListTileforOrders(
                imagePath: 'asset/ip15-removebg-preview.png',
                title: 'Canceled on Dec 29,2022',
                subtitle: 'iphone 15 (Titanium Black)'),
            const Gap(25),
            ListTileforOrders(
              imagePath: 'asset/discoveryPlus-removebg-preview.png',
              title: 'Canceled on Dec 26,2022',
              subtitle: 'Free Discocvery+25%off on anual subsi',
            ),
            const Gap(10),
            const Divider(),
            const Gap(10),
            ListTileforOrders(
              imagePath: 'asset/oppof19-removebg-preview.png',
              title: 'Deleverd on Dec 16,2022',
              subtitle: 'OppoF19 pro+ 5G (Spacer Black)',
            ),
            const Gap(30),
            ListTileforOrders(
              imagePath: 'asset/coin_dcx-removebg-preview.png',
              title: 'Deleverd on Dec 16,2022',
              subtitle: 'Free CoinDx +35%off on anual subsi',
            ),
          ],
        ),
      ),
    );
  }
}
