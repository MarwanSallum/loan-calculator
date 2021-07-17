import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CalculatorController());
  }
}