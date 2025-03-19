
import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/home/components/category_item.dart';
class CategoryList extends StatelessWidget {
  const CategoryList({
   required Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
  key: const Key("combo_meal"),
  title: "Combo Meal",
  isActive: true,
  press: () {},
),

CategoryItem(
  key: const Key("chicken"),
  title: "Chicken",
  press: () {},
),

CategoryItem(
  key: const Key("beverages"),
  title: "Beverages",
  press: () {},
),

CategoryItem(
  key: const Key("snacks_sides"),
  title: "Snacks & Sides",
  press: () {},
),

        ],
      ),
    );
  }
}