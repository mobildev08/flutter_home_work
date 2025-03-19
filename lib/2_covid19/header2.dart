import 'package:flutter/material.dart';
import 'package:flutter_home_work/2_covid19/colors2.dart';
import 'package:flutter_home_work/2_covid19/home_screen2.dart';
import 'package:flutter_svg/svg.dart';

class MyHeader extends StatelessWidget {
  final String images;
  final String textTop;
  final String textBottom;
  const MyHeader({
    super.key,
    required this.images,
    required this.textTop,
    required this.textBottom,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCLipper1(),
      child: Container(
        padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu copy 2.svg",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Stack(
              children: [
                SvgPicture.asset(
                  images,
                  width: 230,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                  top: 20,
                  left: 150,
                  child: Text(
                    "$textTop\n $textBottom",
                    style: kHeadingTextStyle.copyWith(color: Colors.white),
                  ),
                ),
                Container(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}