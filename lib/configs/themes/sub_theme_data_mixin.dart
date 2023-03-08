import 'package:flutter/material.dart';
import 'package:flutterquizeapp/configs/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

mixin subThemeData {
  TextTheme getTextTheme() {
    return GoogleFonts.quicksandTextTheme(
      TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(fontWeight: FontWeight.w400)),
    );
  }

  IconThemeData getIconTheme() {
    return IconThemeData(
      color: onSurfaceTextColor,
      size: 16,
    );
  }
}
