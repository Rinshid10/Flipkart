import 'package:flipcart/screen/Grocery.dart';
import 'package:flipcart/screen/cart.dart';
import 'package:flutter/material.dart';

class TabBarForCart extends StatefulWidget {
  const TabBarForCart({super.key});

  @override
  State<TabBarForCart> createState() => _TabBarForCartState();
}

class _TabBarForCartState extends State<TabBarForCart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          bottom: const TabBar(
              indicatorColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              labelColor: Colors.blue,
              labelStyle: TextStyle(fontWeight: FontWeight.w900),
              labelPadding: EdgeInsets.all(5),
              tabs: [
                Tab(
                  text: 'Flipkart',
                ),
                Tab(
                  text: 'Grocery',
                ),
              ]),
        ),
        body: const TabBarView(children: [Cart(), Grocery()]),
      ),
    );
  }
}
