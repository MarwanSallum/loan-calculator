import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/calculator/widgets/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InterestAndPeriodField extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: Get.height * 0.15,
          width: Get.width * 0.45,
          decoration: BoxDecoration(
            color: Get.theme.primaryColorDark,
            borderRadius: BorderRadius.circular(30),
          ),
          child: GetBuilder<CalculatorController>(
            builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('النسبة', style: Theme.of(context).textTheme.bodyText1,),
                    Text(controller.interestRate.toStringAsFixed(2), style: Get.theme.textTheme.headline5,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundIconButton(
                      width: Get.width * 0.10,
                      height: Get.height * 0.05,
                      fillColor: Color(0xFF4C4F5E),
                      iconColor: Theme.of(context).iconTheme.color!,
                      onPressed: (){
                        controller.increaseInterestRate();
                      },
                      onLongPress: (){
                        controller.longIncreaseInterestRate();
                      },
                      onLongPressUp: (){
                        controller.longPressedUp();
                      },
                      icon: FontAwesomeIcons.plus,
                    ),
                    RoundIconButton(
                      width: Get.width * 0.10,
                      height: Get.height * 0.05,
                      fillColor: Color(0xFF4C4F5E),
                      iconColor: Theme.of(context).iconTheme.color!,
                      onPressed: (){
                        controller.decreaseInterestRate();
                      },
                      onLongPress: (){
                        controller.longDecreaseInterestRate();
                      },
                      onLongPressUp: (){
                        controller.longPressedUp();
                      },
                      icon: FontAwesomeIcons.minus,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: Get.height * 0.15,
          width: Get.width * 0.45,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(30),
          ),
          child: GetBuilder<CalculatorController>(
            builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('المدة', style: Theme.of(context).textTheme.bodyText1,),
                   Text(controller.period.toString(), style: Theme.of(context).textTheme.headline5,),
                 ],
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundIconButton(
                      width: Get.width * 0.10,
                      height: Get.height * 0.05,
                      fillColor: Color(0xFF4C4F5E),
                      iconColor: Theme.of(context).iconTheme.color!,
                      onPressed: (){
                        controller.increasePeriod();
                      },
                      onLongPress: (){
                        controller.longIncreasePeriod();
                      },
                      onLongPressUp: (){
                        controller.longPressedUp();
                      },
                      icon: FontAwesomeIcons.plus,
                    ),
                    RoundIconButton(
                      width: Get.width * 0.10,
                      height: Get.height * 0.05,
                      fillColor: Color(0xFF4C4F5E),
                      iconColor: Theme.of(context).iconTheme.color!,
                      onPressed: (){
                        controller.decreasePeriod();
                      },
                      onLongPress: (){
                        controller.longDecreasePeriod();
                      },
                      onLongPressUp: (){
                        controller.longPressedUp();
                      },
                      icon: FontAwesomeIcons.minus,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
