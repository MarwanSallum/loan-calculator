import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SliderFeild extends StatelessWidget {
  late String title;
  late int salary;
  late double min;
  late double max;
  late void Function(double) onChanged;

  SliderFeild({
    required this.title,
    required this.salary,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: Get.height * 0.02),
      child: Container(
        height: Get.height * 0.12,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Get.width * 0.10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.bodyText1,),
                    Text(formatter.format(salary), style: Theme.of(context).textTheme.headline5,),
                  ],
                ),
              ),
              Slider(
                value: salary.toDouble(),
                onChanged: onChanged,
                min: min,
                max: max,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
