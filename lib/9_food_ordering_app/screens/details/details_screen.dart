import 'package:flutter/material.dart';
import 'package:flutter_home_work/9_food_ordering_app/constants.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/components/app_bar.dart';
import 'package:flutter_home_work/9_food_ordering_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: const Body(),
    );
  }
}