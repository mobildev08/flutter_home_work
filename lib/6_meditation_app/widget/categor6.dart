// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_home_work/6_meditation_app/colors6.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final String Svg;
  final String title;
  final VoidCallback press;
  const CategoryCard(
      {super.key,
      required this.Svg,
      required this.title,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
           BoxShadow(
              offset:  Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor)
        ], color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(Svg),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}