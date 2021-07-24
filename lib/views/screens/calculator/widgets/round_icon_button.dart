import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RoundIconButton extends GetResponsiveView {
  late IconData icon;
  late Function onPressed;
  late double width;
  late double height;
  late Color fillColor;
  late Color iconColor;

  RoundIconButton({
    required this.icon,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.fillColor,
    required this.iconColor,
  });

  @override
  Widget phone() {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon, color: iconColor, size: Get.width * 0.07,),
      onPressed: onPressed as void Function(),
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
      shape: CircleBorder(),
      fillColor: fillColor,
    );
  }
}
