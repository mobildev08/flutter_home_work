import 'package:flutter/material.dart';

void main() => runApp(const MyConcreteApp());

abstract class MyApp extends StatelessWidget {
  const MyApp({super.key});
}

class MyConcreteApp extends MyApp {
  const MyConcreteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
      ),
      );
  }
}
