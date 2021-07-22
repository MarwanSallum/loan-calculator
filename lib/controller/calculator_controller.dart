import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
class CalculatorController extends GetxController{
  final formatter = NumberFormat("#,###.##");
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int salary = 0;
  int period = 20;
  int realEstateValue = 0;
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

  changeRealEstate(double newValue){
    realEstateValue = newValue.round();
    update();
  }

  changeDownPayment(double newValue){
    downPayment = newValue;
    update();
  }

  changeObligations(double newValue){
    obligations = newValue.round();
    update();
  }

  increaseInterestRate(){
    if(interestRate < 6.99){
      interestRate += 0.01;
    }
    update();
  }

  decreaseInterestRate(){
    if(interestRate > 0.50){
      interestRate -= 0.01;
    }
    update();
  }

  increasePeriod(){
    if(period < 25){
      period++;
    }
    update();
  }

  decreasePeriod(){
    if(period > 1){
      period--;
    }
    update();
  }

  int totalAmountGivingToCustomer(){
    return (realEstateValue - downPayment).round();
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
    double netLoanProfit = (realEstateValue * (period + 1) * (interestRate / 100));
    return (total + netLoanProfit).round();
  }


 sendResultToCustomer() async{
    var link = WhatsAppUnilink(
      phoneNumber: "+966${mobileController.text}",
      text:   "*حاسبة تمويل مبدئية*\n"
          "\n"
          "*المبلغ المعطى للعميل* : ${totalAmountGivingToCustomer()} \n"
          "*القسط* : ${installmentBeforeSupport()} \n"
          "*القسط بعد الدعم* : ${installmentAfterSupport()} \n"
          "*هامش الربح* : ${interestRate.toString()} \n"
          "*المدة بالسنوات* : ${period.toString()} \n"
          "*صافي التمويل* : ${loanProfitability()} \n"
          "\n"
          "_الإحتساب أعلاه هو إحتساب مبدئي كما أن التفاصيل النهائية يتم تحديدها عند إستكمال الطلب ورفعها إلى الإدارة المعنية_",
    );

    await launch("$link");
  }
}