import 'package:get/get.dart';

class CalculatorController extends GetxController{
  int salary = 5000;
  int age = 30;
  int period = 5;
  int realEstateValue = 0;
  int downPayment = 0;
  int obligations = 0;
  double interestRate = 0.79;

  changeSalary(double newValue){
    salary = newValue.round();
    update();
  }

  changeRealEstate(double newValue){
    realEstateValue = newValue.round();
    update();
  }

  changeDownPayment(double newValue){
    downPayment = newValue.round();
    update();
  }

  changeObligations(double newValue){
    obligations = newValue.round();
    update();
  }

  changeInterestRate(double newValue){
    interestRate = newValue;
    update();
  }


  increaseAge(){
    age++;
    update();
  }

  decreaseAge(){
    age--;
    update();
  }

  increasePeriod(){
    period++;
    update();
  }

  decreasePeriod(){
    period--;
    update();
  }
}