
import 'package:flutter/material.dart';
import 'package:flutter_home_work/6_meditation_app/colors6.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            Svg: "assets/icons/calendar.svg",
            title: "Today",
            press: () {},
            isActivite: false,
          ),
          BottomNavItem(
            Svg: "assets/icons/gym.svg",
            title: "All Exercises",
            press: () {},
            isActivite: true,
          ),
          BottomNavItem(
            Svg: "assets/icons/Settings.svg",
            title: "Settings",
            press: () {},
            isActivite: false,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String Svg;
  final String title;
  final bool isActivite;
  final VoidCallback? press;
  const BottomNavItem({
    super.key,
    required this.Svg,
    required this.title,
    required this.press,
    required this.isActivite,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            Svg,
            color: isActivite ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: isActivite ? kActiveIconColor : Colors.black),
          )
        ],
      ),
    );
  }
}
