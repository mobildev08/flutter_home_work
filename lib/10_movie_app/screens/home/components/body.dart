import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/constants.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';
import 'categories.dart';
import 'genres.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key, required Movie movie});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
