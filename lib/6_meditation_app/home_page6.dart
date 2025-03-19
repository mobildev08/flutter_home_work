import 'package:flutter/material.dart';
import 'package:flutter_home_work/6_meditation_app/details_screen6.dart';
import 'package:flutter_home_work/6_meditation_app/widget/bottom_navbar6.dart';
import 'package:flutter_home_work/6_meditation_app/widget/categor6.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                          color: Color(0XFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning \n Shishir",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 45),
                  ),
                  const SearchBar(),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(
                          press: () {},
                          Svg: "assets/icons/Hamburger.svg",
                          title: "Diet Recommendation"),
                      CategoryCard(
                        press: () {},
                        Svg: "assets/icons/Exercises.svg",
                        title: "Kegel Exercises",
                      ),
                      CategoryCard(
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DetailsScreen();
                            }));
                          },
                          Svg: "assets/icons/Meditation.svg",
                          title: "Meditation"),
                      CategoryCard(
                          press: () {},
                          Svg: "assets/icons/yoga.svg",
                          title: "Yoga"),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}