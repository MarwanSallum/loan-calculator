import 'package:bnkr_pro/controller/welcome_controller.dart';
import 'package:bnkr_pro/services/admob_service.dart';
import 'package:bnkr_pro/services/user_info_service.dart';
import 'package:bnkr_pro/views/pages/all_pages.dart';
import 'package:bnkr_pro/views/screens/calculator/calculator_screen.dart';
import 'package:bnkr_pro/views/screens/welcome/welcome_screen.dart';
import 'package:bnkr_pro/views/themes/dark_theme.dart';
import 'package:bnkr_pro/views/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  UserInfoService userInfoService = UserInfoService();
  AdmobService.initialize();
  bool seen = await userInfoService.isWelcomeSeen();
  Widget _screen;
  if(seen == true){
    _screen = CalculatorScreen();
  }else{
    _screen = WelcomeScreen();
    Get.lazyPut(() => WelcomeController());
  }
  
  runApp(MyApp(_screen));
}

class MyApp extends StatelessWidget {
  final Widget _screen;
  MyApp(this._screen);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      textDirection: TextDirection.rtl,
      theme: LightTheme.data,
      darkTheme: DarkTheme.data,
      themeMode: ThemeMode.system,
      getPages: allPages,
      home: _screen,
    );
  }
}

