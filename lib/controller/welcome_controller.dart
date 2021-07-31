import 'package:bnkr_pro/services/user_info_service.dart';
import 'package:bnkr_pro/views/screens/calculator/calculator_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController{
  final UserInfoService userInfoService = UserInfoService();
  
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController organizationController = TextEditingController();

  bool isLoading = false;
  bool isError = false;


   var nameValidateInput = MultiValidator([
     RequiredValidator(errorText: "فضلا أدخل الأسم"),
     LengthRangeValidator(min: 5, max: 35, errorText: 'فضلا أدخل الأسم الثنائي كحد أدنى أو الرباعي كحد أعلى'),
     PatternValidator("[\u0600-\u06ff]|[\u0750-\u077f]|[\ufb50-\ufc3f]|[\ufe70-\ufefc]", errorText: 'هذا الحقل يقبل اللغة العربية فقط'),
   ]);

  var organizationValidateInput = MultiValidator([
    RequiredValidator(errorText: "فضلا أدخل أسم جهة التمويل التابع لها"),
    LengthRangeValidator(min: 5, max: 25, errorText: 'هذا الحقل يقبل على الأقل 5 أحرف , بحد أعلى 25 حرف'),
    PatternValidator("[\u0600-\u06ff]|[\u0750-\u077f]|[\ufb50-\ufc3f]|[\ufe70-\ufefc]", errorText: 'هذا الحقل يقبل اللغة العربية فقط'),
  ]);

  Future<dynamic> saveDataToStorage() async{
    final isValid = formKey.currentState!.validate();
    try{
      if(isValid){
        formKey.currentState!.save();
        showLoading();
        removeError();
        await userInfoService.storeUserName(nameController.text);
        await userInfoService.storeUserOrganization(organizationController.text);
        await Future.delayed(Duration(seconds: 2));
        removeLoading();
        Get.off(CalculatorScreen());
      }
    }catch(error){
      removeLoading();
      showError();
    }
  }

  void showLoading(){
    isLoading = true;
    update();
  }

  void removeLoading(){
    isLoading = false;
    update();
  }

  void showError(){
    isError = true;
    update();
  }

  void removeError(){
    isError = false;
    update();
  }


}