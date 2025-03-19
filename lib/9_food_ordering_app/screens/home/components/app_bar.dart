import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
        children: const[
          TextSpan(
            text: "Punk",
            style: TextStyle(color: kSecondaryColor),
          ),
          TextSpan(
            text: "Food",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}