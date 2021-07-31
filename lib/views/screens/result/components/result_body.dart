import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/result/widgets/result_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultBody extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: Get.height * 0.03),
      child: Container(
        height: Get.height * 0.55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Get.height * 0.03),
          child: GetBuilder<CalculatorController>(
            builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: ResultRow(title: 'المبلغ المعطى للعميل', value: controller.totalAmountGivingToCustomer().toDouble())),
                Expanded(child: ResultRow(title: 'القسط', value: controller.installmentBeforeSupport().toDouble())),
                Expanded(child: ResultRow(title: 'القسط بعد الدعم', value: controller.installmentAfterSupport().toDouble())),
                Expanded(child: ResultRow(title: 'هامش الربح', value: controller.interestRate.toDouble())),
                Expanded(child: ResultRow(title: 'المدة بالسنوات', value: controller.period.toDouble())),
                Expanded(child: ResultRow(title: 'إجمالي التمويل', value: controller.loanProfitability().toDouble())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// 0567256800