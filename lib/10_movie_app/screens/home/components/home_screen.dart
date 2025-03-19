import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';
import 'package:flutter_home_work/10_movie_app/screens/details/components/body.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_home_work/10_movie_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(
        key: const Key('some_key'),
        movie: Movie(
          title: 'Some Movie',
          description: 'Some Description',
          poster: 'poster_path',
          backdrop: 'backdrop_path',
          id: 1,
          year: 2021,
          numOfRatings: 100,
          criticsReview: 80,
          metaScoreRating: 75,
          rating: 4.5,
          genre: ['Action'],
          plot: 'Some plot',
          cast: [
            {'name': 'Actor 1'},
            {'name': 'Actor 2'},
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
