import 'package:flutterquizeapp/controllers/theme_controller.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    // Get.lazyPut(() => FirebaseStorageService());
    // TODO: implement dependencies
  }
}
