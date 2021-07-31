import 'package:bnkr_pro/bindings/welcom_binding.dart';
import 'package:get/get.dart';

class WelcomePage extends GetPage{
  WelcomePage({required GetView view}) : super(
    name: '/',
    page: () => view,
    binding: WelcomeBinding(),
  );

}