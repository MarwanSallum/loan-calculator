import 'package:bnkr_pro/services/admob_service.dart';
import 'package:get/get.dart';

class AdmobController extends GetxController{
  AdmobService admobService = AdmobService();

  @override
  void onInit() {
    admobService.createInterstitialAd();
    super.onInit();
  }

  showInterstitialAd(){
    admobService.showInterstitialAd();
  }
}