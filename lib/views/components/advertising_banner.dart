import 'package:bnkr_pro/services/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdvertisingBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AdmobService.createBannerAd().size.height.toDouble(),
      width: AdmobService.createBannerAd().size.width.toDouble(),
      child: AdWidget(
        key: UniqueKey(),
        ad: AdmobService.createBannerAd()..load(),
      ),
    );
  }
}