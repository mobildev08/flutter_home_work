import 'package:flutter/material.dart';
import 'package:flutter_home_work/1_course_app/constants1.dart';
import 'package:flutter_home_work/1_course_app/course_content1.dart';
import 'package:flutter_home_work/1_course_app/home_page1.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage("assets/images/ux_big.png"),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ClipPath(
                      clipper: BestSellerClipper(),
                      child: Container(
                        color: kBestSellerColor,
                        padding: const EdgeInsets.only(
                            left: 10, top: 5, right: 20, bottom: 5),
                        child: Text(
                          "BestSeller".toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Design Thinking",
                      style: kHeadIndexStyle,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("18K"),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4.8")
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "\$50",
                        style: kHeadIndexStyle.copyWith(fontSize: 38),
                      ),
                      TextSpan(
                          text: "\$70",
                          style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                              decoration: TextDecoration.lineThrough))
                    ]))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Course Content",
                            style: kHeadIndexStyle,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            child: ListView.builder(
                                padding: const EdgeInsets.all(0),
                                itemCount: courseContentsList.length,
                                itemBuilder: (context, index) {
                                  CourseContents courseContent1 =
                                      courseContentsList[index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const CourseVideo();
                                      }));
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 30),
                                      child: Row(
                                        children: [
                                          Text(
                                            courseContent1.courseNumber,
                                            style: TextStyle(
                                                fontSize: 32,
                                                color:
                                                    kTextColor.withOpacity(.25),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "${courseContent1.mintNumber} mints\n",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: kTextColor
                                                        .withOpacity(.5),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      courseContent1.curseName,
                                                  style: kSubtitleTextSyule
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.5),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      kGreenColor.withOpacity(
                                                          courseContent1
                                                                  .isActivity
                                                              ? 1
                                                              : .5)),
                                              child: IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: const Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                  )))
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 50,
                              color: kTextColor.withOpacity(.1),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 20, bottom: 10, right: 25),
                                padding: const EdgeInsets.all(13),
                                height: 65,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.red.withOpacity(.2)),
                                child: SvgPicture.asset(
                                    "assets/icons/shopping-bag.svg"),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, right: 20),
                              width: 240,
                              height: 65,
                              decoration: BoxDecoration(
                                color: kBlueColor,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            }
          ),
        ));
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CourseVideo extends StatelessWidget {
  const CourseVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Course video"),
      ),
    );
  }
}