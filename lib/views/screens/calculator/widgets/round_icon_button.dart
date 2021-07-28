import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RoundIconButton extends GetResponsiveView {
  late IconData icon;
  late Function onPressed;
  late Function onLongPress;
  late Function onLongPressUp;
  late double width;
  late double height;
  late Color fillColor;
  late Color iconColor;

  RoundIconButton({
    required this.icon,
    required this.onPressed,
    required this.onLongPress,
    required this.onLongPressUp,
    required this.width,
    required this.height,
    required this.fillColor,
    required this.iconColor,
  });

  @override
  Widget phone() {
    return GestureDetector(
      child: Container(
        width: width,
          height: height,
          decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: iconColor, size: Get.width * 0.07,),
      ),
      onTap: onPressed as void Function(),
      onLongPress: onLongPress as void Function(),
      onLongPressUp: onLongPressUp as void Function(),
    );
  }
}
