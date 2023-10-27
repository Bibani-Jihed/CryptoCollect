import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff161719),
  primaryColor: const Color.fromARGB(255, 247, 247, 243),
  secondaryHeaderColor: const Color(0xff161719),
  textTheme:
      textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
);
final lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 247, 247, 243),
  textTheme: textTheme.apply(
      bodyColor: const Color(0xff161719),
      displayColor: const Color(0xff161719)),
);

final textTheme = const TextTheme(
  displayLarge: TextStyle(
    fontFamily: "SpaceGrostesk",
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: .8,
  ),
  bodyMedium: TextStyle(
    fontFamily: "SpaceGrostesk",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .4,
  ),
).apply(bodyColor: Colors.white, displayColor: Colors.white);
