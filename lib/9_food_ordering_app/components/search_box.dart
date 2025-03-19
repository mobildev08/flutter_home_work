import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    required Key key,
   required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: kSecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Here",
          hintStyle: const TextStyle(color: kSecondaryColor),
        ),
      ),
    );
  }
}