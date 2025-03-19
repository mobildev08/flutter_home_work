import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/components/bottom_nav_bar.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/components/body.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/home/components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: const BottomNavBar(),
      body: const Body(),
    );
  }
}
