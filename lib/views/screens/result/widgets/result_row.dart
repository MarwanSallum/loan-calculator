import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ResultRow extends GetView<CalculatorController> {
  late String title;
  late int value;

  ResultRow({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.headline6,),
          value == controller.interestRate
            ? Text(value.toStringAsFixed(2), style: Theme.of(context).textTheme.headline5,)
            : Text(formatter.format(value), style: Theme.of(context).textTheme.headline5,),
        ],
      ),
    );
  }
}
