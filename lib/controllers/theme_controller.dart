import 'package:flutter/material.dart';
import 'package:flutterquizeapp/configs/themes/app_light_theme.dart';
import 'package:get/get.dart';

import '../configs/themes/app_dark_theme.dart';

class ThemeController extends GetxController {
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;
  @override
  void onInit() {
    initializeThemeData();
    // TODO: implement onInit
    super.onInit();
  }

  initializeThemeData() {
    _darkTheme = DarkTheme().buildDarkTheme();
    _lightTheme = LightTheme().buildLightTheme();
  }

  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;
}
