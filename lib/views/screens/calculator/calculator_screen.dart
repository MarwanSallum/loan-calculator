import 'package:bnkr_pro/controller/admob_controller.dart';
import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/animation/page_transition_animation.dart';
import 'package:bnkr_pro/views/components/advertising_banner.dart';
import 'package:bnkr_pro/views/components/default_button.dart';
import 'package:bnkr_pro/views/screens/calculator/components/salary_field.dart';
import 'package:bnkr_pro/views/screens/calculator/components/interest_and_period_field.dart';
import 'package:bnkr_pro/views/screens/result/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/loan_amount_and_ obligations_field.dart';

class CalculatorScreen extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    Get.put(CalculatorController());
    Get.put(AdmobController());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: AdvertisingBanner()),
            Expanded(flex: 2, child: SalaryField()),
            Expanded(flex: 2, child: InterestAndPeriodField()),
            Expanded(flex: 4, child: LoanAmountAndObligationsField()),
            Expanded(
              child: DefaultButton(
                  title: 'إحسب',
                  onPressed: () {
                    Get.find<AdmobController>().showInterstitialAd();
                    Navigator.of(context).push(
                      PageTransitionAnimation(child: ResultScreen()),
                    );
                    Get.delete<AdmobController>();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
