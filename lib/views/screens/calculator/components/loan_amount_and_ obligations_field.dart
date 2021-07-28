import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/calculator/widgets/defualt_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanAmountAndObligationsField extends GetView<CalculatorController> {
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
                Expanded(
                  flex: 1,
                  child: DefaultSlider(
                    title: 'مبلغ التمويل المطلوب',
                    value: controller.loanAmountRequest.toDouble(),
                    min: 0,
                    max: 2000000,
                    onChanged: (value){},
                    increase: (){
                      controller.increaseLoanAmountRequest();
                    },
                    longIncrease: (){
                      controller.longIncreaseLoanAmountRequest();
                    },
                    longIncreaseUp: (){
                      controller.longPressedUp();
                    },
                    decrease: (){
                      controller.decreaseLoanAmountRequest();
                    },
                    longDecrease: (){
                      controller.longDecreaseLoanAmountRequest();
                    },
                    longDecreaseUp: (){
                      controller.longPressedUp();
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: DefaultSlider(
                    title: 'الدفعه المقدمة',
                    value: controller.downPayment.toDouble(),
                    min: 0,
                    max: 500000,
                    onChanged: (value){},
                    increase: (){
                      controller.increaseDownPayment();
                    },
                    longIncrease: (){
                      controller.longIncreaseDownPayment();
                    },
                    longIncreaseUp: (){
                      controller.longPressedUp();
                    },
                    decrease: (){
                      controller.decreaseDownPayment();
                    },
                    longDecrease: (){
                      controller.longDecreaseDownPayment();
                    },
                    longDecreaseUp: (){
                      controller.longPressedUp();
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: DefaultSlider(
                    title: 'الإلتزامات الشهرية',
                    value: controller.obligations.toDouble(),
                    min: 0,
                    max: 5000,
                    onChanged: (value){
                      controller.changeObligations(value);
                    },
                    increase: (){
                      controller.increaseObligations();
                    },
                    longIncrease: (){
                      controller.longIncreaseObligations();
                    },
                    longIncreaseUp: (){
                      controller.longPressedUp();
                    },
                    decrease: (){
                      controller.decreaseObligations();
                    },
                    longDecrease: (){
                      controller.longDecreaseObligations();
                    },
                    longDecreaseUp: (){
                      controller.longPressedUp();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
