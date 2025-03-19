import 'package:flutter/material.dart';
import 'package:flutter_home_work/1_course_app/home_page1.dart';
import 'package:flutter_home_work/5_book_app/color5.dart';
import 'package:flutter_home_work/5_book_app/widgets/book_reading5.dart';
import 'package:flutter_home_work/5_book_app/widgets/button5.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bg.png"),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .06,
                        ),
                        const BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .37),
                  child: Column(
                    children: [
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        name: "Money",
                        tag: "Lice is about change",
                        chapterNumber: 1,
                      ),
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        name: "Power",
                        tag: "Everything loves power",
                        chapterNumber: 2,
                      ),
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        name: "Influence",
                        tag: "Influence easily like never before",
                        chapterNumber: 3,
                      ),
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        name: "Win",
                        tag: "Winning is what matters",
                        chapterNumber: 4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                    children: [
                                  TextSpan(text: "You might also "),
                                  TextSpan(
                                      text: "like....",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ])),
                            Stack(
                              children: [
                                const SizedBox(
                                  height: 180,
                                  width: double.infinity,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 20, right: 150),
                                    height: 160,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFFFF8F9),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: Column(
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    "How To Win \nFriends & Influence\n",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              TextSpan(
                                                  text: "Gary Venchuk",
                                                  style: TextStyle(
                                                      color: kLightBlackColor))
                                            ],
                                          ),
                                        ),
                                        Row(children: [
                                          const BookRating(rating: 4.8),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                              child: RoundedButton(
                                                  text1: "Read",
                                                  press: () {},
                                                  verticalPadding: 8))
                                        ])
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Image.asset(
                                    "assets/images/book-2.png",
                                    width: 150,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;

  const ChapterCard(
      {super.key,
      required this.press,
      required this.name,
      required this.tag,
      required this.chapterNumber});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width - 48,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38.5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 33,
                color: kShadowColor5)
          ],
        ),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Chapter $chapterNumber : $name\n",
                    style: const TextStyle(
                        fontSize: 16,
                        color: kBlackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: tag,
                    style: const TextStyle(color: kLightBlackColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Crushing &",
              style: head,
            ),
            Text(
              "Influence",
              style: head.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(.7)),
                          "When the earth was flat and everyone wanted to win the game all the best and people and winning with an A game with all the things you have"),
                      const SizedBox(
                        height: 5,
                      ),
                      RoundedButton(
                          verticalPadding: 10, text1: "Read", press: () {})
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border)),
                    const BookRating(rating: 4.9)
                  ],
                )
              ],
            )
          ],
        )),
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        ),
      ],
    );
  }
}