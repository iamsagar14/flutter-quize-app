import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterquizeapp/screens/splash/home/home_screen.dart';
import 'package:flutterquizeapp/widgets/app_circle_button.dart';
import 'package:get/get.dart';

import '../../configs/themes/app_colors.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 65,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'This is study app.You can yse it as you want if you understand how it works you would be able to scale it.With this you will master firebase backend and flutter frontend ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: onSurfaceTextColor,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AppCircleButton(
                onTap: () {
                  print('tapped');
                  Get.offAndToNamed('/home');
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
