import 'package:flutter/material.dart';
import 'package:flutter_home_work/2_covid19/colors2.dart';

class Counter extends StatelessWidget {
  final Color colorCounter;
  final String infectedNumber;
  final String counterName;
  const Counter({
    super.key,
    required this.colorCounter,
    required this.infectedNumber,
    required this.counterName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorCounter.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: colorCounter, width: 2)),
          ),
        ),
        Text(
          infectedNumber,
          style: TextStyle(fontSize: 40, color: colorCounter),
        ),
        Text(
          counterName,
          style: kSubTextStyle,
        )
      ],
    );
  }
}