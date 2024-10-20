import 'package:flipcart/screen/myorder.dart';
import 'package:flipcart/screen/widgetForPages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Hey! IRFAN HABEEB',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 23,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'asset/supercoin.png',
                            height: 20,
                          ),
                          const Text(
                            '771',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const Text(
                        'Explore',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                      const Gap(10),
                      Container(
                        child: Image.asset(
                          'asset/flipplus-removebg-preview.png',
                          height: 80,
                        ),
                      ),
                      const Gap(5),
                      Container(
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //nexxtttt
            const Divider(),
            const Gap(5),
            //next 4 container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => const MyOrder()));
                  },
                  child: container4ForTop(
                      giveIcon: Icons.gif_box_rounded, giveTextName: 'Orders'),
                ),
                container4ForTop(
                    giveIcon: Icons.favorite, giveTextName: 'Whishlist'),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                container4ForTop(
                    giveIcon: Icons.card_giftcard, giveTextName: 'Coupons'),
                container4ForTop(
                    giveIcon: Icons.headset_mic, giveTextName: 'Help Center')
              ],
            ),
            const Gap(10),
            const Divider(
              color: Colors.black12,
              thickness: 10,
            ),
            //credit option.................
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Credit Option',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              ),
            ),
            const Gap(10),
            forCreditOptions(
                giveanIcon: Icons.paid,
                title: 'Flipkart Pay Later',
                subtitle: 'Flipkart Axis Bank Credit Card',
                giveANicon: Icons.arrow_forward_ios),
            const Gap(2),
            forCreditOptions(
                giveanIcon: Icons.credit_card,
                title: 'FlipKart Axis Bank Credit Card',
                subtitle: '',
                giveANicon: Icons.arrow_forward_ios),
            const Divider(
              color: Colors.black12,
              thickness: 10,
            ),
            //neww containersss....................
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: SizedBox(
                height: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'asset/flipLevelUp.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 90),
                      child: Divider(
                        color: Colors.green,
                        thickness: 4,
                      ),
                    ),
                    Container(
                      child: const ListTile(
                        title: Text(
                          'Level Up and Win rewards Worth Rs.10000',
                          style: TextStyle(fontSize: 12),
                        ),
                        subtitle: Text(
                          'Only 1 more task to complete this level',
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              thickness: 10,
            ),
            const Gap(15),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Account Settings',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
              ),
            ),
            const Gap(10),

            ForAccountSettings(
                giveicon: Icons.star,
                givetext: 'Flipkart Plus',
                giveIcon: Icons.arrow_forward_ios),
            ForAccountSettings(
                giveicon: Icons.person,
                givetext: 'Edit Profile',
                giveIcon: Icons.arrow_forward_ios),
            ForAccountSettings(
                giveicon: Icons.language,
                givetext: 'Select Language',
                giveIcon: Icons.arrow_forward_ios),
            ForAccountSettings(
                giveicon: Icons.edit_notifications,
                givetext: 'Notification Settings',
                giveIcon: Icons.arrow_forward_ios),
            const Divider(
              color: Colors.black12,
              thickness: 10,
            ),
            const Gap(15),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'My Activity',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            const Gap(10),
            ForAccountSettings(
                giveicon: Icons.edit_document,
                givetext: 'Reviews',
                giveIcon: Icons.arrow_forward_ios),
            ForAccountSettings(
                giveicon: Icons.forum,
                givetext: 'Questions & Answers',
                giveIcon: Icons.arrow_forward_ios),
            const Divider(
              color: Colors.black12,
              thickness: 10,
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Earn with Flipkart',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            const Gap(10),

            ForAccountSettings(
                giveicon: Icons.star_border_outlined,
                givetext: 'Flipkart Creator Studio',
                giveIcon: Icons.arrow_forward_ios),
            ForAccountSettings(
                giveicon: Icons.storefront,
                givetext: 'Sell on Flipkaart',
                giveIcon: Icons.arrow_forward_ios),
            const Divider(
              color: Colors.black12,
              thickness: 10,
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Feedback & Information',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            const Gap(10),
            ForAccountSettings(
                giveicon: Icons.sim_card,
                givetext: 'Flipkart Creator Studio',
                giveIcon: Icons.arrow_forward_ios),
            ForAccountSettings(
                giveicon: Icons.help,
                givetext: 'Flipkart Creator Studio',
                giveIcon: Icons.arrow_forward_ios),
            const Gap(10),
            Container(
              height: 100,
              width: double.infinity,
              color: const Color.fromARGB(255, 205, 203, 203),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      'Log Out',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
