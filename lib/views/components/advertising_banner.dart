import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdvertisingBanner extends StatelessWidget {
  late double height;
  late double width;
  late AdWithView ad;

  AdvertisingBanner({
    required this.height,
    required this.width,
    required this.ad,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      child: AdWidget(
        key: UniqueKey(),
        ad: ad,
      ),
    );
  }
}