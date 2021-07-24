import 'package:bnkr_pro/views/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightTheme {
  static String textFontFamily = 'ElMessiri';
  static String numberFontFamily = 'Bahnschrift';

  static ThemeData data = ThemeData.light().copyWith(
    primaryColorDark: LightColor().primaryColor,
    scaffoldBackgroundColor: LightColor().scaffoldBackgroundColor,
    textTheme: TextTheme(
      headline5: TextStyle(
          color: LightColor().thirdColor,
          fontFamily: numberFontFamily,
          fontSize: Get.width * 0.06,
      ),
      bodyText1: TextStyle(
          color: LightColor().thirdColor,
          fontFamily: textFontFamily,
          fontSize: Get.width * 0.04,
          fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
          color: LightColor().thirdColor,
          fontFamily: textFontFamily,
          fontSize: Get.width * 0.04,
          fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
          color: LightColor().thirdColor,
          fontFamily: textFontFamily,
          fontSize: Get.width * 0.04,
          fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
          color: DarkColor().accentColor,
          fontFamily: textFontFamily,
          fontSize: Get.width * 0.04,
          fontWeight: FontWeight.bold,
      ),
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


    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: Get.height * 0.02, horizontal: Get.width * 0.20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
    ),


    sliderTheme: SliderThemeData(
      inactiveTrackColor: LightColor().accentColor,
      activeTrackColor: LightColor().thirdColor,
      thumbColor: LightColor().accentColor,
      overlayColor: LightColor().accentColor.withOpacity(0.40),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: Get.width * 0.02),
      overlayShape: RoundSliderOverlayShape(overlayRadius: Get.width * 0.03),
    ),
  );
}
