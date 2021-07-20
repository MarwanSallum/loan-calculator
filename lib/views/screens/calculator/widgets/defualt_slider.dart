import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DefaultSlider extends GetResponsiveView {
  late String title;
  late double value;
  late double min;
  late double max;
  late void Function(double) onChanged;

  DefaultSlider({
    required this.title,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  @override
  Widget phone() {
    final formatter = NumberFormat("#,###.##");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
        Slider(
          value: value.toDouble(),
          onChanged: onChanged,
          min: min,
          max: max,
        ),
      ],
    );
  }
}
