import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/views/screens/calculator/widgets/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AgeAndPeriodField extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: Get.height * 0.15,
          width: Get.width * 0.45,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(30),
          ),
          child: GetBuilder<CalculatorController>(
            builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('العمر', style: Theme.of(context).textTheme.bodyText1,),
                Text(controller.age.toString(), style: Theme.of(context).textTheme.headline5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundIconButton(
                      onPressed: (){
                        controller.increaseAge();
                      },
                      icon: FontAwesomeIcons.plus,
                    ),
                    RoundIconButton(
                      onPressed: (){
                        controller.decreaseAge();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('المدة بالسنوات', style: Theme.of(context).textTheme.bodyText1,),
                Text(controller.period.toString(), style: Theme.of(context).textTheme.headline5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundIconButton(
                      onPressed: (){
                        controller.increasePeriod();
                      },
                      icon: FontAwesomeIcons.plus,
                    ),
                    RoundIconButton(
                      onPressed: (){
                        controller.decreasePeriod();
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
