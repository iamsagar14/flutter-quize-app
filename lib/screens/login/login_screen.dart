import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterquizeapp/configs/themes/app_colors.dart';
import 'package:flutterquizeapp/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../../widgets/commom/main_button_dart.dart';

class LogInScreen extends GetView<AuthController> {
  static const String routeName = '/login';
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: mainGradient()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app_splash_logo.png',
              width: 200,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Text(
                'This is a study app ,you can use as you want ,you have the full access to all the material in this course ',
                style: TextStyle(
                  color: onSurfaceTextColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            MainButton(
              onTap: () {
                controller.signInWithGoogle();
              },
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: SvgPicture.asset('assets/icons/google.svg'),
                  ),
                  Center(
                    child: Text(
                      'Sign In with google ',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
