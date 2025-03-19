import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';
import 'package:flutter_home_work/10_movie_app/screens/home/components/body.dart';


class DetailsScreen extends StatelessWidget {
  final Movie movie;
const DetailsScreen({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie, key: const Key('body'),),
    );
  }
}
