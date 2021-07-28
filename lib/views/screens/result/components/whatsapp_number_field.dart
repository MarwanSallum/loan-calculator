import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/components/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhatsappNumberField extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>CalculatorController());
    FocusScopeNode currentFocus = FocusScope.of(context);
    return Container(
      height: Get.height * 0.60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.10),
            child: Form(
              key: controller.formKey,
              child: TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                controller: controller.mobileController,
                decoration: InputDecoration().copyWith(
                  hintText: 'أدخل رقم الواتساب',
                  hintStyle: TextStyle(fontFamily: 'ElMessiri'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          DefaultButton(
              title: 'إرسال',
              color: MaterialStateProperty.all(Colors.green),
              onPressed: () {
                controller.sendResultToCustomer();
              }),
        ],
      ),
    );
  }
}
