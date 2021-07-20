import 'package:bnkr_pro/views/themes/colors.dart';
import 'package:flutter/material.dart';

class LightTheme{

  static String textFontFamily = 'ElMessiri';
  static String numberFontFamily = 'Bahnschrift';

  static ThemeData data = ThemeData.light().copyWith(
    primaryColorDark: LightColor().primaryColor,
    scaffoldBackgroundColor: LightColor().scaffoldBackgroundColor,

    textTheme: TextTheme(
      headline5: TextStyle(color: LightColor().thirdColor, fontFamily: numberFontFamily),
      bodyText1: TextStyle(color: LightColor().thirdColor, fontFamily: textFontFamily, fontSize: 18, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(color: LightColor().thirdColor, fontFamily: textFontFamily, fontSize: 18, fontWeight: FontWeight.bold),

    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: LightColor().primaryColor,
    ),

    iconTheme: IconThemeData(
      color: LightColor().accentColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(LightColor().accentColor),
      ),
    ),

    sliderTheme: SliderThemeData(
      inactiveTrackColor: LightColor().thirdColor,
      activeTrackColor: LightColor().accentColor,
      thumbColor: LightColor().accentColor,
      overlayColor: LightColor().accentColor.withOpacity(0.40),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
    ),
  );
}