import 'package:flutter/material.dart';
import 'package:flutter_home_work/1_course_app/home_page1.dart';
import 'package:flutter_home_work/6_meditation_app/colors6.dart';
import 'package:flutter_home_work/6_meditation_app/widget/bottom_navbar6.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

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
              color: kBlueLightColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w900, fontSize: 40),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "3-10 MIN Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: size.width * .6,
                  child: const Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness"),
                ),
                SizedBox(width: size.width * .5, child: const SearchBar()),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    SessionCard(
                      press: () {},
                      number: 1,
                      isActive: true,
                    ),
                    SessionCard(
                      press: () {},
                      number: 2,
                      isActive: false,
                    ),
                    SessionCard(
                      press: () {},
                      number: 3,
                      isActive: false,
                    ),
                    SessionCard(
                      press: () {},
                      number: 4,
                      isActive: false,
                    ),
                    SessionCard(
                      press: () {},
                      number: 5,
                      isActive: false,
                    ),
                    SessionCard(
                      press: () {},
                      number: 6,
                      isActive: false,
                    ),
                  ],
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                         BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: 13,
                            color: kShadowColor)
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/Meditation_women_small.svg"),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Basic 2",
                                style: TextStile.copyWith(fontSize: 16),
                              ),
                              const Text("Start your deepen you practice")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset("assets/icons/Lock.svg"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int number;
  final bool isActive;
  final VoidCallback press;
  const SessionCard({
    super.key,
    required this.number,
    required this.isActive,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -23,
                    color: kShadowColor)
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: isActive ? Colors.white : kBlueColor),
                          color: isActive ? kBlueColor : Colors.white,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.play_arrow,
                        color: isActive ? Colors.white : kBlueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Session $number",
                      style: TextStile
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}