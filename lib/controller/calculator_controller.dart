import 'package:get/get.dart';

class CalculatorController extends GetxController{
  int salary = 5000;
  late int value;

  changeSalary(double newValue){
    salary = newValue.round();
    update();
  }
}