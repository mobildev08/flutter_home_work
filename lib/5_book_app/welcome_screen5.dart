import 'package:flutter/material.dart';
import 'package:flutter_home_work/5_book_app/screens/home_screen5.dart';
import 'package:flutter_home_work/5_book_app/widgets/button5.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Bitmap.png"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black54, fontSize: 40),
                children: [
                  TextSpan(
                    text: "flamingo",
                  ),
                  TextSpan(
                      text: "go",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black))
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text1: "start reading",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                verticalPadding: 24,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }),
    );
  }
}