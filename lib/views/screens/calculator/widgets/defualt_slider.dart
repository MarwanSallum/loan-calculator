import 'package:bnkr_pro/views/screens/calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DefaultSlider extends GetView {
  late String title;
  late double value;
  late double min;
  late double max;
  late void Function(double) onChanged;
  late void Function() increase;
  late void Function() decrease;

  DefaultSlider({
    required this.title,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.increase,
    required this.decrease
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Get.theme.textTheme.bodyText1,
              ),
              Text(
                formatter.format(value),
                style: Get.theme.textTheme.headline5,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundIconButton(
                width: Get.width * 0.08,
                height: Get.height * 0.05,
                fillColor: Colors.transparent,
                iconColor: Theme.of(context).iconTheme.color!,
                  icon: FontAwesomeIcons.plus,
                  onPressed: increase,
              ),
              Expanded(
                child: Slider(
                  value: value.toDouble(),
                  onChanged: onChanged,
                  min: min,
                  max: max,
                ),
              ),
              RoundIconButton(
                width: Get.width * 0.08,
                height: Get.height * 0.05,
                fillColor: Colors.transparent,
                iconColor: Theme.of(context).iconTheme.color!,
                icon: FontAwesomeIcons.minus,
                onPressed: decrease,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
