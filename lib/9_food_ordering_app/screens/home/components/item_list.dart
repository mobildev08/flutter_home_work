import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/details_screen.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/home/components/item_card.dart';
class ItemList extends StatelessWidget {
  const ItemList({
   required Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            key: const Key("burger_and_beer"),
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            key: const Key("chinese_and_noodles"),
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Chinese & Noodles",
            shopName: "Wendys",
            press: () {},
          ),
          ItemCard(
            key: const Key("burger_and_cola"),
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {},
          )
        ],
      ),
    );
  }
}