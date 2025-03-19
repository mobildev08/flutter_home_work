import 'package:flutter/material.dart';
import 'package:flutter_home_work/10_movie_app/constants.dart';
import 'package:flutter_home_work/10_movie_app/models/movie.dart';
class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
   required Key key,
    required this.movie,
  }) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
               const SizedBox(height: kDefaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text(
                      '${movie.year}',
                      style: const TextStyle(color: kTextLightColor),
                    ),
                   const SizedBox(width: kDefaultPadding),
                   const Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                   const SizedBox(width: kDefaultPadding),
                   const Text(
                      "2h 32min",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
         SizedBox(
  height: 64,
  width: 64,
  child: TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: kSecondaryColor, // Set the background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: const Icon(
      Icons.add,
      size: 28,
      color: Colors.white,
    ),
  ),
)

        ],
      ),
    );
  }
}