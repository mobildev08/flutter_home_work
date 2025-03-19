import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/constants.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/components/item_image.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/components/order_button.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
       ItemImage(
  key: Key('item_image'),
  imgSrc: 'assets/images/burger.png',
),

        ItemInfo(
  key: Key('item_info'),
)

      ],
    );
  }
}
class ItemInfo extends StatelessWidget {
  const ItemInfo({
   required Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "McDonald's"),
      TitlePriceRating(
        double.infinity,
  key:  const Key('title price rating'),
  price: 5,
  numOfReviews: 24,
  name: "Cheese Burger",
  rating: 4.0,
  onRatingChanged: RatingChangeCallback('value')
),
       const Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
         OrderButton(
  key: const Key('order_button'),
  size: size,
  press: () {},
)

        ],
      ),
    );
  }
  Row shopeName({required String name}) {
    return Row(
      children: <Widget>[
       const Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
       const SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}