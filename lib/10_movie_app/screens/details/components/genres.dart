import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/components/genre_card.dart';
import 'package:flutter_home_work/10_movie_app/constants.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    required Key key,
    required this.movie,
  }) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genre.length,
          itemBuilder: (context, index) => GenreCard(
  key: ValueKey(index),
  genre: movie.genre[index],
),

          ),
        ),
    );
  }
}