import 'package:flutter/material.dart';
import 'package:flutter_home_work/5_book_app/color5.dart';
import 'package:flutter_home_work/5_book_app/screens/Info_screen5.dart';
import 'package:flutter_home_work/5_book_app/widgets/book_reading5.dart';
import 'package:flutter_home_work/5_book_app/widgets/button5.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage("assets/images/main_page_bg.png"),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 40),
                    children: [
                      TextSpan(text: "What are you \nreading "),
                      TextSpan(
                          text: "today?",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReadingListCard(
                        images: "assets/images/book-1.png",
                        title: "Crushing & Influence",
                        auth: "Gary Venchuk",
                        rating: 4.9,
                        pressDetails: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const InfoScreen()));
                        },
                        pressRead: () {}),
                    ReadingListCard(
                        images: "assets/images/book-2.png",
                        title: "Top Ten Business Hacks",
                        auth: "Herman Joel",
                        rating: 4.8,
                        pressDetails: () {},
                        pressRead: () {}),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: head,
                        children: [
                          TextSpan(text: "Best of the "),
                          TextSpan(
                            text: "day",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    bestOfTheDayCard(size),
                    RichText(
                      text: const TextSpan(
                        style: head,
                        children: [
                          TextSpan(text: "Continue "),
                          TextSpan(
                              text: "reading...",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38.5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 33,
                              color: kShadowColor),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 30),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Crushing & Influence",
                                          style: kTextColor,
                                        ),
                                        Text("Gary Venchuk"),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            "Chapter 7 of 10",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: kLightBlackColor),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/book-1.png",
                                    width: 55,
                                  )
                                ],
                              ),
                            )),
                            Container(
                              height: 7,
                              width: size.width * .65,
                              decoration: BoxDecoration(
                                  color: kProgressIndicator,
                                  borderRadius: BorderRadius.circular(7)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const InfoScreen()));
      }),
    );
  }

  Container bestOfTheDayCard(Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: const Color(0xFFEAEAEA).withOpacity(.45),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(color: kLightBlackColor, fontSize: 9),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "How To Win\n Friends & Influence",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      BookRating(rating: 4.8),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          "When the Sarah was fat and everyone warned to win the game of the",
                          style:
                              TextStyle(fontSize: 12, color: kLightBlackColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child:
                  TwoSideRoundedButton(text: "Read", radius: 24, press: () {}),
            ),
          )
        ],
      ),
    );
  }
}