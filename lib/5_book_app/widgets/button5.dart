import 'package:flutter/material.dart';
import 'package:flutter_home_work/5_book_app/color5.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final VoidCallback press;
  const TwoSideRoundedButton(
      {super.key,
      required this.text,
      required this.radius,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}class RoundedButton extends StatelessWidget {
  final String text1;
  final VoidCallback press;
  final double verticalPadding;
  final double? fontSize;
  const RoundedButton(
      {super.key,
      required this.text1,
      required this.press,
      required this.verticalPadding,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding:
            EdgeInsets.symmetric(horizontal: 30, vertical: verticalPadding),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 20,
              color: const Color(0xFF666666).withOpacity(.3))
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}