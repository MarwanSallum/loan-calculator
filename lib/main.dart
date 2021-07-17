import 'package:bnkr_pro/views/pages/all_pages.dart';
import 'package:bnkr_pro/views/themes/dark_theme.dart';
import 'package:bnkr_pro/views/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      textDirection: TextDirection.rtl,
      theme: LightTheme.data,
      darkTheme: DarkTheme.data,
      themeMode: ThemeMode.system,
      getPages: allPages,
    );
  }
}

