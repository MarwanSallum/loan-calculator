import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvertisingBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.02),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
        height: Get.height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text('إعلانات')),
      ),
    );
  }
}