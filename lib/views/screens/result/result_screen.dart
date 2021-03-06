import 'package:bnkr_pro/controller/admob_controller.dart';
import 'package:bnkr_pro/services/admob_service.dart';
import 'package:bnkr_pro/views/components/advertising_banner.dart';
import 'package:bnkr_pro/views/components/default_button.dart';
import 'package:bnkr_pro/views/screens/result/components/result_body.dart';
import 'package:bnkr_pro/views/screens/result/components/whatsapp_number_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends GetView{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AdvertisingBanner(
              width: AdmobService.createBannerAdForResultScreen().size.width.toDouble(),
              height: AdmobService.createBannerAdForResultScreen().size.height.toDouble(),
              ad: AdmobService.createBannerAdForResultScreen()..load(),
            ),
            ResultBody(),
            DefaultButton(title: 'أعد الإحتساب', onPressed: (){
              Navigator.pop(context);
              Get.put(AdmobController());
            }),
            DefaultButton(
                title: 'مشاركة عبر الواتساب',
                color: MaterialStateProperty.all(Colors.green),
                onPressed: (){
                  Get.bottomSheet(WhatsappNumberField());
                },
            ),
          ],
        )
      ),
    );
  }
}
