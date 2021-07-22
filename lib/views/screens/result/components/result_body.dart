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
                ResultRow(title: 'المبلغ المعطى للعميل', value: controller.totalAmountGivingToCustomer()),
                ResultRow(title: 'القسط', value: controller.installmentBeforeSupport()),
                ResultRow(title: 'القسط بعد الدعم', value: controller.installmentAfterSupport()),
                ResultRow(title: 'هامش الربح', value: controller.interestRate.round()),
                ResultRow(title: 'المدة بالسنوات', value: controller.period.round()),
                ResultRow(title: 'صافي التمويل', value: controller.loanProfitability()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// 0567256800