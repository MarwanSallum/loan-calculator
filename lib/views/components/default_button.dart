import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultButton extends GetView {
  late String title;
  late Function onPressed;
  MaterialStateProperty<Color?>? color;


  DefaultButton({
    required this.title,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.01, bottom: Get.height * 0.01),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: Get.width * 0.80, height: Get.height * 0.08),
        child: ElevatedButton(
          onPressed: onPressed as void Function(),
          style: ButtonStyle(backgroundColor: color),
          child: Text(title, style: Theme.of(context).textTheme.bodyText2,),
        ),
      ),
    );
  }
}
