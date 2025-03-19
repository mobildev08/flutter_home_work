import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/components/search_box.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/home/components/category_list.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/home/components/discount_card.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      SearchBox(
  key: const Key('search_box'), // Add a unique key for each widget
  onChanged: (value) {},
),
const CategoryList(
  key: Key('category_list'),
),
const ItemList(
  key: Key('item_list'),
),
const DiscountCard(
  key: Key('discount_card'),
),
        ]
      ),
    );
  }
}