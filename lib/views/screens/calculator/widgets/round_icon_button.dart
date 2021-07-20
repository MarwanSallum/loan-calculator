import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RoundIconButton extends GetResponsiveView {
  late IconData icon;
  late Function onPressed;
  late Function onLongPress;

  RoundIconButton({
    required this.icon,
    required this.onPressed,
    required this.onLongPress,
  });

  @override
  Widget phone() {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon, color: Get.theme.iconTheme.color,),
      onPressed: onPressed as void Function(),
      onLongPress: onLongPress as void Function(),
      constraints: BoxConstraints.tightFor(
        width: Get.width * 0.10,
        height: Get.height * 0.05,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
