import 'package:flutter/material.dart';

class DarkTheme{
  static ThemeData data = ThemeData.dark().copyWith(
    primaryColorDark: Color(0xFF008b9a),
    scaffoldBackgroundColor: Color(0xFF1b4f5b),

    textTheme: TextTheme(
      headline5: TextStyle(color: Color(0xFF98b121), fontFamily: 'Bahnschrift'),
      bodyText1: TextStyle(color: Color(0xFF98b121), fontFamily: 'ElMessiri', fontSize: 18, fontWeight: FontWeight.bold),
    ),

    sliderTheme: SliderThemeData(
      inactiveTrackColor: Colors.grey,
      activeTrackColor: Color(0xFF98b121),
      thumbColor: Color(0xFF98b121),
      overlayColor: Colors.grey,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
    ),
  );
}