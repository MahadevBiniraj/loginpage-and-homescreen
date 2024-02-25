import 'package:flutter/material.dart';

class RecentEvents extends StatelessWidget {
  const RecentEvents({super.key, required this.value});
  final int value;

  @override
  Widget build(BuildContext context) {
    List mylist = [
      [
        {
          "itemimage":
              "https://logohistory.net/wp-content/uploads/2023/02/Nike-Logo.jpg",
          "itemname": "NIKE SHOP",
          "itemprice": "-62,94",
        },
        {
          "itemimage":
              "https://cdn.freebiesupply.com/logos/large/2x/starbucks-coffee-logo-png-transparent.png",
          "itemname": "STARBUCKS",
          "itemprice": "-6,00",
        },
        {
          "itemimage":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Kristen_Bell_Frozen_premiere_2013_%28cropped%29.jpg/800px-Kristen_Bell_Frozen_premiere_2013_%28cropped%29.jpg",
          "itemname": "Anna johnson",
          "itemprice": "50,00",
        },
        {
          "itemimage":
              "https://ieee-dataport.org/sites/default/files/styles/3x2/public/IMG_20211204_193159.jpg?itok=B28LXWrt",
          "itemname": "From Savings",
          "itemprice": "25,00",
        },
      ],
      [
        {
          "itemimage":
              "https://1000logos.net/wp-content/uploads/2017/03/McDonalds-logo.png",
          "itemname": "McDonald's",
          "itemprice": "-62,94",
        },
        {
          "itemimage":
              "https://upload.wikimedia.org/wikipedia/commons/2/24/Adidas_logo.png",
          "itemname": "addidas",
          "itemprice": "-6,00",
        },
        {
          "itemimage":
              "https://contents.mediadecathlon.com/p2393841/97ec4616ea32d8eaa67ee3c30d2eafd2/p2393841.jpg?format=auto&quality=70&f=650x0",
          "itemname": "shoes ",
          "itemprice": "50,00",
        },
        {
          "itemimage":
              "https://ieee-dataport.org/sites/default/files/styles/3x2/public/IMG_20211204_193159.jpg?itok=B28LXWrt",
          "itemname": "From Savings",
          "itemprice": "25,00",
        },
      ]
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent events",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              width: double.infinity,
              color: Colors.cyanAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          image: DecorationImage(
                              image: NetworkImage(
                                  mylist[value][index]["itemimage"]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Text(mylist[value][index]["itemname"]),
                  Text(mylist[value][index]["itemprice"])
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
