import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'cast_card.dart';
class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({required Key key,required this.casts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
         const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
itemBuilder: (context, index) => CastCard(
  key: Key("CastCard_$index"), 
  cast: casts[index],
),
            ),
          )
        ],
      ),
    );
  }
}