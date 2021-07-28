import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/calculator/widgets/defualt_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalaryField extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculatorController>(
      builder: (_) => Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.height * 0.01),
        child: Container(
          height: Get.height * 0.14,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: Get.width * 0.10,vertical: Get.height * 0.02),
            child: DefaultSlider(
              title: 'الراتب',
              value: controller.salary.toDouble(),
              min: 0,
              max: 35000,
              onChanged: (value){
                controller.changeSalary(value);
              },
              increase: (){
                controller.increaseSalary();
              },
              longIncrease: (){
                controller.longIncreaseSalary();
              },
              longIncreaseUp: (){
                controller.longPressedUp();
              },
              decrease: (){
                controller.decreaseSalary();
              },
              longDecrease: (){
                controller.longDecreaseSalary();
              },
              longDecreaseUp: (){
                controller.longPressedUp();
              },
            ),
          ),
        ),
      ),
    );
  }
}
