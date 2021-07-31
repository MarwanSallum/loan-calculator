import 'package:bnkr_pro/views/pages/calculator_page.dart';
import 'package:bnkr_pro/views/pages/result_page.dart';
import 'package:bnkr_pro/views/pages/welcome_page.dart';
import 'package:bnkr_pro/views/screens/calculator/calculator_screen.dart';
import 'package:bnkr_pro/views/screens/result/result_screen.dart';
import 'package:bnkr_pro/views/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

List<GetPage> allPages = [
  WelcomePage(view: WelcomeScreen()),
  CalculatorPage(view: CalculatorScreen()),
  ResultPage(view: ResultScreen()),
];