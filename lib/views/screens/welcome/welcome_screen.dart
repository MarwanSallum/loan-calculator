import 'package:bnkr_pro/controller/calculator_controller.dart';
import 'package:bnkr_pro/controller/welcome_controller.dart';
import 'package:bnkr_pro/views/components/default_button.dart';
import 'package:bnkr_pro/views/components/default_text_field.dart';
import 'package:bnkr_pro/views/components/error_view.dart';
import 'package:bnkr_pro/views/components/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentFocus;
    unfocus() {
      currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }
    return SafeArea(
      child: GestureDetector(
        onTap: unfocus,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                Get.isDarkMode
                    ? ExactAssetImage('assets/images/welcome_dark.png',)
                    : ExactAssetImage('assets/images/welcome_light.png'),
              )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body:  Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Get.height * 0.40,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.10,),
                  child: Form(
                    key: controller.formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(flex: 1,),
                        DefaultTextField(
                          hintText: 'الإسم',
                          controller: controller.nameController,
                          validator: controller.nameValidateInput,
                        ),
                        Spacer(flex: 3,),
                        DefaultTextField(
                          hintText: 'جهة التمويل التابع لها',
                          controller: controller.organizationController,
                          validator: controller.organizationValidateInput,
                        ),
                        Spacer(flex: 3,),
                        Loading(),
                        ErrorView(controller.nameValidateInput.toString()),
                        ErrorView(controller.organizationValidateInput.toString()),
                        DefaultButton(title: 'إبدأ', onPressed:(){
                          controller.saveDataToStorage();
                        } ),
                        Spacer(flex: 3,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
