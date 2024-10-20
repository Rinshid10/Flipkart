import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget forCreditOptions(
    {required IconData giveanIcon,
    required String title,
    required String subtitle,
    required IconData giveANicon}) {
  return Container(
    child: ListTile(
      leading: Icon(
        giveanIcon,
        size: 25,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 11, color: Colors.black54),
      ),
      trailing: Icon(giveANicon),
    ),
  );
}

Widget container4ForTop({
  required IconData giveIcon,
  required String giveTextName,
}) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(5)),
      height: 50,
      width: 170,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(
              giveIcon,
              color: Colors.blue,
            ),
            const Gap(10),
            Text(
              giveTextName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ));
}

Widget ForAccountSettings(
    {required IconData giveicon,
    required String givetext,
    required IconData giveIcon}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Icon(
                giveicon,
                color: Colors.blue,
              ),
              const Gap(15),
              Text(
                givetext,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Icon(
          giveIcon,
          size: 15,
        )
      ],
    ),
  );
}

Widget containerForCartFirst({
  required String Giveimage,
  required String textName1,
  required String textName2,
  required String offerText,
  required String lineThrowText,
  required String price,
  required String DevileyMonthDayText,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
    child: SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  Giveimage,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textName1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const Gap(5),
                  Text(
                    textName2,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  const Gap(5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black54)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Qty',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        offerText,
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w900),
                      ),
                      const Gap(10),
                      Text(
                        lineThrowText,
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.black38,
                            fontWeight: FontWeight.w900),
                      ),
                      const Gap(10),
                      Text(
                        price,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const Text(
                    '4 offers applied. 2 offers available',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  DevileyMonthDayText,
                ),
                const Gap(2),
                const Text(
                  'Free Delivery',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 160,
                color: Colors.black12,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.archive,
                      color: Colors.black87,
                    ),
                    Gap(5),
                    Text(
                      'Save For Later',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 160,
                color: Colors.black12,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.black87,
                    ),
                    Gap(5),
                    Text(
                      'Remove',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget placeOrder() {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
        border: Border(
      top: BorderSide(
        color: Colors.black12,
        width: 3,
      ),
      bottom: BorderSide(
        color: Colors.black12,
        width: 3,
      ),
    )),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: ListTile(
        title: const Text(
          '13,944',
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 15,
              color: Colors.black54),
        ),
        subtitle: const Row(
          children: [
            Text(
              '4,840',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Gap(10),
            Icon(Icons.error, color: Colors.black)
          ],
        ),
        trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 40, right: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.amber,
                minimumSize: const Size(90, 50)),
            onPressed: () {},
            child: const Text('Place Order',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w900))),
      ),
    ),
  );
}

Widget ListTileforOrders(
    {required String imagePath,
    required String title,
    required String subtitle}) {
  return Container(
    child: ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(overflow: TextOverflow.ellipsis),
      ),
      leading: Image.asset(imagePath),
      horizontalTitleGap: 15,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
    ),
  );
}

Widget containeForCostumers() {
  return Center(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black12)),
      height: 30,
      width: 180,
      child: const Center(
          child: Text(
        'Shared by Flipkart Customer',
        style: TextStyle(fontSize: 10),
      )),
    ),
  );
}
