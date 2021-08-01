import 'package:bnkr_pro/services/user_info_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
class CalculatorController extends GetxController{
  final formatter = NumberFormat("#,###.##");
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isLongPressed = false;

  int salary = 0;
  int period = 20;
  int loanAmountRequest = 0;
  double downPayment = 0;
  int obligations = 0;
  double interestRate = 2.79;
  double deductionRate = 0.65;
  TextEditingController mobileController = TextEditingController();

  @override
  void onClose() {
    mobileController.dispose();
    super.onClose();
  }

  changeSalary(double newValue){
    salary = newValue.round();
    update();
  }

  increaseSalary(){
    if(salary < 35000) {
      salary++;
      update();
    }
  }

  longIncreaseSalary() async{
    if(salary < 34800){
      do{
        isLongPressed = true;
        salary += 50;
        update();
        await Future.delayed(Duration(milliseconds: 100));
      } while (salary < 34900 && isLongPressed == true);
    }else{
      isLongPressed = false;
    }
  }

  decreaseSalary(){
    if(salary > 0) {
      salary--;
      update();
    }
  }

  longDecreaseSalary() async{
    if(salary > 100){
      do{
        isLongPressed = true;
        salary -= 50;
        update();
        await Future.delayed(Duration(milliseconds: 100));
      } while (salary > 100 && isLongPressed == true);
    }else{
      isLongPressed = false;
    }
  }

  increaseLoanAmountRequest(){
    if(loanAmountRequest < 2000000){
      loanAmountRequest += 5000;
      update();
    }
  }

  longIncreaseLoanAmountRequest() async{
    if(loanAmountRequest < 1999900){
      do{
        isLongPressed = true;
        loanAmountRequest += 5000;
        update();
        await Future.delayed(Duration(milliseconds: 10));
      }while(loanAmountRequest < 1999900 && isLongPressed == true );
    }
  }

  decreaseLoanAmountRequest(){
    if(loanAmountRequest > 0){
      loanAmountRequest -= 5000;
      update();
    }
  }

  longDecreaseLoanAmountRequest() async{
    if(loanAmountRequest > 0){
      do{
        isLongPressed = true;
        loanAmountRequest -= 5000;
        update();
        await Future.delayed(Duration(milliseconds: 10));
      }while(loanAmountRequest > 0 && isLongPressed == true );
    }
  }

  changeDownPayment(double newValue){
    downPayment = newValue;
    update();
  }

  increaseDownPayment(){
    if(downPayment < 500000){
      downPayment += 5000;
      update();
    }
  }

  longIncreaseDownPayment() async{
    if(downPayment < 495000){
      do{
        isLongPressed = true;
        downPayment += 5000;
        update();
        await Future.delayed(Duration(milliseconds: 10));
      }while(downPayment < 495000 && isLongPressed == true );
    }
  }

  decreaseDownPayment(){
    if(downPayment > 0){
      downPayment -= 5000;
      update();
    }
  }

  longDecreaseDownPayment() async{
    if(downPayment > 0){
      do{
        isLongPressed = true;
        downPayment -= 5000;
        update();
        await Future.delayed(Duration(milliseconds: 10));
      }while(downPayment > 0 && isLongPressed == true );
    }
  }

  changeObligations(double newValue){
    obligations = newValue.round();
    update();
  }

  increaseObligations(){
    if(obligations < 4800){
      obligations++;
      update();
    }
  }

  longIncreaseObligations() async{
    if(obligations < 4800){
      do{
        isLongPressed = true;
        obligations += 50;
        update();
        await Future.delayed(Duration(milliseconds: 50));
      }while(obligations < 4800 && isLongPressed == true );
    }
  }

  decreaseObligations(){
    if(obligations > 0){
      obligations--;
      update();
    }
  }

  longDecreaseObligations() async{
    if(obligations > 100){
      do{
        isLongPressed = true;
        obligations -= 50;
        update();
        await Future.delayed(Duration(milliseconds: 50));
      }while(obligations > 100 && isLongPressed == true );
    }
  }

  increaseInterestRate(){
    if(interestRate < 8.99){
      interestRate += 0.01;
    }
    update();
  }

  longIncreaseInterestRate() async{
    if(interestRate < 8.79){
      do{
        isLongPressed = true;
        interestRate += 0.05;
        update();
        await Future.delayed(Duration(milliseconds: 50));
      }while(interestRate < 8.79 && isLongPressed == true);
    }
  }

  decreaseInterestRate(){
    if(interestRate > 0.10){
      interestRate -= 0.01;
    }
    update();
  }

  longDecreaseInterestRate() async{
    if(interestRate > 0.10){
      do{
        isLongPressed = true;
        interestRate -= 0.05;
        update();
        await Future.delayed(Duration(milliseconds: 50));
      }while(interestRate > 0.20 && isLongPressed == true);
    }
  }

  increasePeriod(){
    if(period < 25){
      period++;
    }
    update();
  }

  longIncreasePeriod() async{
    if(period < 25){
      do{
        isLongPressed = true;
        period += 2;
        update();
        await Future.delayed(Duration(milliseconds: 50));
      }while(period < 23 && isLongPressed == true);
    }
  }

  decreasePeriod(){
    if(period > 1){
      period--;
    }
    update();
  }

  longDecreasePeriod() async{
    if(period > 3){
      do{
        isLongPressed = true;
        period -= 2;
        update();
        await Future.delayed(Duration(milliseconds: 50));
      }while(period > 3 && isLongPressed == true);
    }
  }

  longPressedUp(){
    isLongPressed = false;
    update();
  }

  int totalAmountGivingToCustomer(){
    return (loanAmountRequest - downPayment).round();
  }

  int installmentBeforeSupport(){
    if( ( (salary * deductionRate) - obligations ) > loanIstallment() ){
      return loanIstallment().round();
    }else{
      return 0;
    }
  }

  int installmentAfterSupport(){
    int total = totalAmountGivingToCustomer();
    int supportValue = 500000;
    if( ( (salary * deductionRate) - obligations ) > loanIstallment() ){
      if(total > supportValue){
        double loanAmount = ((total - supportValue) / ((period + 1) * (interestRate / 100))) / (period * 12);
        double supportAmount = supportValue / (period * 12);
        return (loanAmount + supportAmount).round();
      }else if(period > 5) {
        supportValue = total;
        return (supportValue / (period * 12)).round();
      }else{
        return 0;
      }
    }else{
      return 0;
    }


  }

  double loanIstallment(){
    int total = loanProfitability();
    return total / (period * 12);
  }

  int loanProfitability(){
    int total = totalAmountGivingToCustomer();
    double netLoanProfit = (loanAmountRequest * (period + 1) * (interestRate / 100));
    return (total + netLoanProfit).round();
  }


 sendResultToCustomer() async{
    UserInfoService userInfoService = UserInfoService();
    if (installmentBeforeSupport() == 0) {
      var link = WhatsAppUnilink(
          phoneNumber: "+966${mobileController.text}",
          text: "*حاسبة تمويل مبدئية*\n"
              "\n"
              "*المبلغ المعطى للعميل* : لا يتوافق وذلك بسبب تجاوز القسط 65% من الراتب \n"
              "\n"
              "*الراتب* : ${salary.toString()} \n"
              "*الإلتزامات الخارجية* : ${obligations.toString()} \n"
              "*هامش الربح* : ${interestRate.toStringAsFixed(2)} \n"
              "\n"
              "_الإحتساب أعلاه هو إحتساب مبدئي كما أن التفاصيل النهائية يتم تحديدها عند إستكمال الطلب ورفعها إلى الإدارة المعنية_"
              "\n"
              "\n"
              "*${await userInfoService.showUserName()} - ${await userInfoService.showUserOrganization()}*");
      await launch("$link");
    } else{
      var link = WhatsAppUnilink(
          phoneNumber: "+966${mobileController.text}",
          text: "*حاسبة تمويل مبدئية*\n"
              "\n"
              "*المبلغ المعطى للعميل* : ${totalAmountGivingToCustomer()} \n"
              "*الراتب* : ${salary.toString()} \n"
              "*القسط* : ${installmentBeforeSupport()} \n"
              "*الإلتزامات الخارجية* : ${obligations.toString()} \n"
              "*صافي الراتب بعد الخصم* : ${(salary - (installmentBeforeSupport() + obligations)).toString()} \n"
              "*هامش الربح* : ${interestRate.toStringAsFixed(2)} \n"
              "*المدة بالسنوات* : ${period.toString()} \n"
              "*إجمالي التمويل* : ${loanProfitability()} \n"
              "\n"
              "_الإحتساب أعلاه هو إحتساب مبدئي كما أن التفاصيل النهائية يتم تحديدها عند إستكمال الطلب ورفعها إلى الإدارة المعنية_"
              "\n"
              "\n"
              "*${await userInfoService.showUserName()} - ${await userInfoService.showUserOrganization()}*");
      await launch("$link");
    }
  }
}