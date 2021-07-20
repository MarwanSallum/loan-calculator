import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/components/advertising_banner.dart';
import 'package:bnkr_pro/views/components/default_button.dart';
import 'package:bnkr_pro/views/screens/calculator/components/realestate_and_%20obligations_field.dart';
import 'package:bnkr_pro/views/screens/calculator/components/salary_field.dart';
import 'package:bnkr_pro/views/screens/calculator/components/interest_and_period_field.dart';
import 'package:bnkr_pro/views/screens/result/result_screen.dart';
import 'package:bnkr_pro/views/themes/dark_theme.dart';
import 'package:bnkr_pro/views/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb, color: Theme.of(context).iconTheme.color,),
          onPressed: (){
            Get.changeTheme(Get.isDarkMode ? LightTheme.data : DarkTheme.data);
          },
        ),
        body: Column(
          children: [
            AdvertisingBanner(),
            SalaryField(),
            InterestAndPeriodField(),
            RealEstateAndObligationsField(),
            DefaultButton(title: 'إحسب', onPressed: (){
              Get.to(() => ResultScreen());
            }),
          ],
        ),
      ),
    );
  }
}
