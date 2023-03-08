import 'package:flutterquizeapp/controllers/question_paper/question_paper_controller.dart';
import 'package:flutterquizeapp/controllers/zoom_drawer_controller.dart';
import 'package:flutterquizeapp/screens/introduction/introduction_screen.dart';
import 'package:flutterquizeapp/screens/splash/home/home_screen.dart';
import 'package:flutterquizeapp/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../screens/login/login_screen.dart';
import '../screens/questions/question_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: "/introductions", page: () => AppIntroductionScreen()),
        GetPage(name: LogInScreen.routeName, page: () => LogInScreen()),
        GetPage(name: QuestionScreen.routeName, page: () => QuestionScreen()),
        GetPage(
            name: "/home",
            page: () => HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(QuestionPaperController());
              Get.put(MyZoomDrawerController());
            })),
      ];
}
