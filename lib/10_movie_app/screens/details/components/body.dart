import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/constants.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';
import 'title_duration_and_fav_btn.dart';
class Body extends StatelessWidget {
  final Movie movie;
  const Body({required Key key,required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(key: const Key("BackdropAndRating"), size: size, movie: movie),
TitleDurationAndFabBtn(key: const Key("TitleDurationAndFabBtn"), movie: movie),
Genres(key: const Key("Genres"), movie: movie),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
CastAndCrew(key: const Key("CastAndCrew"), casts: movie.cast),
        ],
      ),
    );
  }
}