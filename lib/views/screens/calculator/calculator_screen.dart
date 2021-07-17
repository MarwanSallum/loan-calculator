import 'package:bnkr_pro/views/components/advertising_banner.dart';
import 'package:bnkr_pro/views/screens/calculator/components/calculator_body.dart';
import 'package:bnkr_pro/views/themes/dark_theme.dart';
import 'package:bnkr_pro/views/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb),
          onPressed: (){
            Get.changeTheme(Get.isDarkMode ? LightTheme.data : DarkTheme.data);
          },
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AdvertisingBanner(),
              CalculatorBody(),
            ],
          ),
        ),
      ),
    );
  }
}
