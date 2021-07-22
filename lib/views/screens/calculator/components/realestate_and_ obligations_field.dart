import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/calculator/widgets/defualt_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RealEstateAndObligationsField extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: Get.height * 0.01),
      child: Container(
        width: double.infinity,
        height: Get.height * 0.38,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
          child: GetBuilder<CalculatorController>(
            builder: (_) => Column(
              children: [
                DefaultSlider(
                  title: 'مبلغ التمويل المطلوب',
                  value: controller.realEstateValue.toDouble(),
                  min: 0,
                  max: 2000000,
                  onChanged: (value){
                    controller.changeRealEstate(value);
                  },
                ),
                DefaultSlider(
                  title: 'الدفعه المقدمة',
                  value: controller.downPayment.toDouble(),
                  min: 0,
                  max: 500000,
                  onChanged: (value){
                    controller.changeDownPayment(value);
                  },
                ),
                DefaultSlider(
                  title: 'الإلتزامات الشهرية',
                  value: controller.obligations.toDouble(),
                  min: 0,
                  max: 5000,
                  onChanged: (value){
                    controller.changeObligations(value);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
