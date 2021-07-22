import 'package:bnkr_pro/controller/admob_controller.dart';
import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/components/advertising_banner.dart';
import 'package:bnkr_pro/views/components/default_button.dart';
import 'package:bnkr_pro/views/screens/calculator/components/realestate_and_%20obligations_field.dart';
import 'package:bnkr_pro/views/screens/calculator/components/salary_field.dart';
import 'package:bnkr_pro/views/screens/calculator/components/interest_and_period_field.dart';
import 'package:bnkr_pro/views/screens/result/result_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    Get.put(CalculatorController());
    Get.put(AdmobController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // AdvertisingBanner(),
            SalaryField(),
            InterestAndPeriodField(),
            RealEstateAndObligationsField(),
            DefaultButton(title: 'إحسب', onPressed: (){
              // Get.find<AdmobController>().showInterstitialAd();
              Get.offAll(() => ResultScreen());
            }),
          ],
        ),
      ),
    );
  }
}
