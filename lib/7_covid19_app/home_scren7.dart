import 'package:flutter/material.dart';
import 'package:flutter_home_work/7_covid19_app/colors7.dart';
import 'package:flutter_home_work/7_covid19_app/detail_scren7.dart';
import 'package:flutter_home_work/7_covid19_app/info_card7.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.03),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  InfoCard(
                    title: "Confirmed Cases",
                    iconColor: const Color(0xFFFF8C00),
                    effectedNum: 1062,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Total Deaths",
                    iconColor: const Color(0xFFFF2D55),
                    effectedNum: 75,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Total Recovered",
                    iconColor: const Color(0xFF50E3C2),
                    effectedNum: 689,
                    press: () {},
                  ),
                  InfoCard(
                    title: "New Cases",
                    iconColor: const Color(0xFF5856D6),
                    effectedNum: 75,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const DetailsScreen();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Preventions",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    buildPrevention(),
                    const SizedBox(height: 40),
                    buildHelpCard(context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildPrevention() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PreventionCard(
          svgSrc: "assets/icons/hand_wash.svg",
          title: "Wash Hands",
        ),
        PreventionCard(
          svgSrc: "assets/icons/use_mask.svg",
          title: "Use Masks",
        ),
        PreventionCard(
          svgSrc: "assets/icons/Clean_Disinfect.svg",
          title: "Clean Disinfect",
        ),
      ],
    );
  }

  Container buildHelpCard(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.only(
              // left side padding is 40% of total width
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF60BE93),
                  Color(0xFF1B8D59),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dial 999 for \nMedical Help!\n",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "If any symptoms appear",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/icons/nurse.svg"),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset("assets/icons/virus.svg"),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const PreventionCard({super.key, required this.svgSrc, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}