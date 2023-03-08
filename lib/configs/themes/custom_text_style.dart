import 'package:flutter/material.dart';
import 'package:flutterquizeapp/configs/themes/app_colors.dart';
import 'package:flutterquizeapp/configs/themes/ui_parameters.dart';

TextStyle cartTitle(context) => TextStyle(
      color: UIParameters.isDarkMode()
          ? Theme.of(context).textTheme.bodyText1!.color
          : Theme.of(context).primaryColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
const detailText = TextStyle(fontSize: 15);
const headerText = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w700, color: onSurfaceTextColor);
