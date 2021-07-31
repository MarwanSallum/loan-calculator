import 'package:bnkr_pro/controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loading extends GetView {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<WelcomeController>(
        init: WelcomeController(),
        builder: (value) => value.isLoading
            ? CircularProgressIndicator(
          backgroundColor: Theme.of(context).primaryColor,
          color: Theme.of(context).accentColor,
        )
            : Container(),
      ),
    );
  }
}