import 'package:flutter/material.dart';
import 'package:flutter_home_work/4_auth_screen/constants4.dart';
import 'package:flutter_home_work/4_auth_screen/sign_up4.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/person.jpeg"))),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "baking lesson\n".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * .083),
                    ),
                    TextSpan(
                        text: "master the art of baking".toUpperCase(),
                        style: TextStyle(fontSize: size.width * .060))
                  ])),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignIn();
                  }));
                },
                child: FittedBox(
                  child: Container(
                    margin: EdgeInsets.only(bottom: size.width * .10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 15),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Row(
                      children: [
                        Text(
                          "START LEARNING",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}