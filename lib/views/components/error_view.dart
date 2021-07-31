import 'package:bnkr_pro/controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorView extends GetView {
  String title = 'يوجد خطأ';
  ErrorView(this.title);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<WelcomeController>(
        init: WelcomeController(),
        builder: (value) => value.isError
            ? Text(
          title,
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
        )
            : Container(),
      ),
    );
  }
}