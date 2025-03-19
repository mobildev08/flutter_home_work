import 'package:flutter/material.dart';
import 'package:flutter_home_work/5_book_app/color5.dart';
import 'package:flutter_home_work/5_book_app/widgets/button5.dart';

class ReadingListCard extends StatelessWidget {
  final String images;
  final String title;
  final String auth;
  final double rating;
  final VoidCallback pressDetails;
  final VoidCallback pressRead;
  const ReadingListCard({
    super.key,
    required this.images,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40, left: 24),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 30,
                      color: kShadowColor5),
                ],
              ),
            ),
          ),
          Image.asset(
            images,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                BookRating(
                  rating: rating,
                ),
              ],
            ),
          ),
          Positioned(
              top: 160,
              child: SizedBox(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: const TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: auth,
                                style: const TextStyle(color: kLightBlackColor))
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: const Text(
                              "Details",
                            ),
                          ),
                        ),
                        Expanded(
                            child: TwoSideRoundedButton(
                          text: "Read",
                          radius: 29,
                          press: () {},
                        ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
class BookRating extends StatelessWidget {
  final double rating;
  const BookRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: const Offset(3, 7),
                blurRadius: 20,
                color: kShadowColor)
          ]),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          Text(
            "$rating",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}