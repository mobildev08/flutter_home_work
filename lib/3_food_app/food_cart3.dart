import 'package:flutter/material.dart';
import 'package:flutter_home_work/3_food_app/color3.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String images;
  final int price;
  final int calories;
  final String description;
  final VoidCallback press;

  const FoodCard(
      {super.key,
      required this.title,
      required this.ingredient,
      required this.images,
      required this.price,
      required this.calories,
      required this.description,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(.06)),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.15),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images))),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    color: kPrimaryColor),
              ),
            ),
            Positioned(
                top: 200,
                left: 40,
                child: SizedBox(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      Text(
                        "With $ingredient",
                        style: TextStyle(
                            fontSize: 16, color: kTextColor.withOpacity(.4)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        description,
                        maxLines: 3,
                        style: TextStyle(color: kTextColor.withOpacity(.65)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text("$calories Kcal")
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}