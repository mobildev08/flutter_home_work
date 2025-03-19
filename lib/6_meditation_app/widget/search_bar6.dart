import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 5,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29.5), color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            icon: SvgPicture.asset("assets/icons/search.svg"),
            border: InputBorder.none),
      ),
    );
  }
}