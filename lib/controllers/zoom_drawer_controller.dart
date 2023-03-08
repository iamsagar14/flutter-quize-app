import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutterquizeapp/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();
  Rxn<User?> user = Rxn();
  @override
  void onReady() {
    user.value = Get.find<AuthController>().getUser();
    super.onReady();
  }

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void signOut() {
    Get.find<AuthController>().signOut();
  }

  void signIn() {}
  void webSite() {
    _lauch('https://www.google.com');
  }

  void facebook() {
    _lauch('https://www.facebook.com');
  }

  void email() {
    final Uri emailLaunchUri =
        Uri(scheme: 'mailto', path: 'sagararyal248@gmail.com');
    _lauch(emailLaunchUri.toString());
  }

  _lauch(String url) async {
    if (!await launch(url)) {
      throw 'couldnot launch $url';
    }
  }
}
