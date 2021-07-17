import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/calculator/components/SliderFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorBody extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<CalculatorController>(
          builder: (_) => SliderFeild(title: 'الراتب', salary: controller.salary, min: 5000, max: 45000, onChanged: (value){
            controller.changeSalary(value);
          },),
        ),
      ],
    );
  }
}
