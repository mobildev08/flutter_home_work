import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);
const stileText =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35);
final kilo = TextFormField(
  style: const TextStyle(color: Colors.white),
  cursorColor: Colors.white,
  decoration: InputDecoration(
      focusColor: Colors.white,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      icon: const Icon(
        Icons.alternate_email,
        color: kPrimaryColor,
      ),
      hintText: " Email Address",
      hintStyle: TextStyle(color: Colors.white.withOpacity(.5))),
  keyboardType: TextInputType.emailAddress,
);

final kilo1 = TextFormField(
  obscureText: true,
  style: const TextStyle(color: Colors.white),
  cursorColor: Colors.white,
  decoration: InputDecoration(
      focusColor: Colors.white,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      icon: const Icon(
        Icons.password,
        color: kPrimaryColor,
      ),
      hintText: " Password",
      hintStyle: TextStyle(color: Colors.white.withOpacity(.5))),
  keyboardType: TextInputType.visiblePassword,
);