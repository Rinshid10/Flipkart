import 'package:flipcart/screen/accoount.dart';
import 'package:flipcart/screen/cart.dart';
import 'package:flipcart/screen/catagories.dart';
import 'package:flipcart/screen/homepage.dart';
import 'package:flipcart/screen/notifications.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex = 0;
  final pagesOfFlip = [
    HomePage(),
    Catagories(),
    Notifications(),
    Account(),
    Cart()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesOfFlip[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
        selectedItemColor: Color(0xff2772ef),
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        unselectedLabelStyle: TextStyle(color: Colors.black54),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
