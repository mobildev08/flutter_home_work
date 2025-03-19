import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 576;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 576 &&
      MediaQuery.of(context).size.width <= 992;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 992;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 992) {
      return desktop;
    } else if (size.width >= 576 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}