import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_work/1_course_app/category1.dart';
import 'package:flutter_home_work/1_course_app/constants1.dart';
import 'package:flutter_home_work/1_course_app/details_screen1.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 50,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                Image.asset("assets/images/user.png")
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hey Muhammad",
              style: kHeadIndexStyle,
            ),
            const Text(
              "Find a course you want to learn",
              style: kSubheadIndexStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    hintText: "Search for anything",
                    hintStyle:
                        const TextStyle(color: Color(0xFFABA5BD), fontSize: 18),
                    border: InputBorder.none),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Category",
                  style: kHeadIndexStyle,
                ),
                Text(
                  "See All",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                ),
              ],
            ),
            Expanded(
              child: MasonryGridView.builder(
                padding: const EdgeInsets.only(top: 20),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                itemCount: categoryList.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) {
                  Category category = categoryList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DetailScreen();
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: index.isEven ? 200 : 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              category.image,
                            )),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            category.name,
                            style: kTitleTextStyle,
                          ),
                          Text(
                            "${category.numOfCourses} Course",
                            style: TextStyle(color: kTextColor.withOpacity(.5)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailScreen()));
        },
        child: const Icon(
          CupertinoIcons.right_chevron,
        ),
      ),
    );
  }
}