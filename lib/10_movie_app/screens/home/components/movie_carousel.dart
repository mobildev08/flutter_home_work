import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/constants.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';
import 'dart:math' as math;
import 'movie_card.dart';
class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MovieCarouselState createState() => _MovieCarouselState();
}
class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: const ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }
  Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double? value = 0;
          if (_pageController.position.haveDimensions) {
value = index - (_pageController.page ?? 0) as double?;
            value = (value! * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: MovieCard(movie: movies[index], key: const Key('MovieCard'),),
            ),
          );
        },
      );
}