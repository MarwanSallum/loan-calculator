import 'package:bnkr_pro/bindings/calculator_binding.dart';
import 'package:get/get.dart';

class CalculatorPage extends GetPage{
  CalculatorPage({required GetView view}) : super(
    name: '/calculator',
    page: () => view,
    binding: CalculatorBinding(),
  );

}