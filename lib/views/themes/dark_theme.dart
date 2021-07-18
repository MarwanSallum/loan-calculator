import 'package:bnkr_pro/views/themes/colors.dart';
import 'package:flutter/material.dart';

class DarkTheme{

  static String textFontFamily = 'ElMessiri';
  static String numberFontFamily = 'Bahnschrift';

  static ThemeData data = ThemeData.dark().copyWith(
    primaryColorDark: DarkColor().primaryColor,
    scaffoldBackgroundColor: DarkColor().scaffoldBackgroundColor,

    textTheme: TextTheme(
      headline5: TextStyle(color: DarkColor().accentColor, fontFamily: numberFontFamily, ),
      bodyText1: TextStyle(color: DarkColor().accentColor, fontFamily: textFontFamily, fontSize: 18, fontWeight: FontWeight.bold),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: DarkColor().primaryColor,
    ),

    iconTheme: IconThemeData(
      color: DarkColor().accentColor,
    ),

    sliderTheme: SliderThemeData(
      inactiveTrackColor: DarkColor().thirdColor,
      activeTrackColor: DarkColor().accentColor,
      thumbColor: DarkColor().accentColor,
      overlayColor: DarkColor().accentColor.withOpacity(0.40),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
    ),
  );
}