import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_work/3_food_app/category3.dart';
import 'package:flutter_home_work/3_food_app/color3.dart';
import 'package:flutter_home_work/3_food_app/details_screen3.dart';
import 'package:flutter_home_work/3_food_app/food_cart3.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen3App extends StatelessWidget {
  const HomeScreen3App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu copy 3.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Simple way to find\nTasty food",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(
                  active: true,
                  title: "All",
                ),
                CategoryTitle(active: false, title: "Asian"),
                CategoryTitle(
                  active: false,
                  title: "Chinese",
                ),
                CategoryTitle(
                  active: false,
                  title: "BurGers",
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: kBorderColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(CupertinoIcons.search),
                  hintText: "Search",
                  border: InputBorder.none),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DetailsScreen3();
                      }));
                    },
                    title: "Vegan salad bowl",
                    ingredient: "with red tomato",
                    images: "assets/images/image_1.png",
                    price: 20,
                    calories: 420,
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin"),
                FoodCard(
                    press: () {},
                    title: "Vegan salad bowl",
                    ingredient: "with red tomato",
                    images: "assets/images/image_2.png",
                    price: 20,
                    calories: 420,
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin"),
                const SizedBox(
                  width: 40,
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DetailsScreen3();
            }));
          }),
          Container(
            padding: const EdgeInsets.all(10),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: kPrimaryColor.withOpacity(.4)),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: kPrimaryColor),
              child: SvgPicture.asset("assets/icons/plus.svg"),
            ),
          ),
        ],
      ),
    );
  }
}