import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutterquizeapp/configs/themes/app_colors.dart';
import 'package:flutterquizeapp/configs/themes/custom_text_style.dart';
import 'package:flutterquizeapp/configs/themes/ui_parameters.dart';
import 'package:flutterquizeapp/controllers/question_paper/question_paper_controller.dart';
import 'package:flutterquizeapp/screens/splash/home/question_cart.dart';
import 'package:flutterquizeapp/widgets/content_area.dart';
import 'package:get/get.dart';

import '../../../configs/themes/app_icons.dart';
import '../../../controllers/zoom_drawer_controller.dart';
import '../../../widgets/app_circle_button.dart';
import 'menu_screen.dart';

class HomeScreen extends GetView<MyZoomDrawerController> {
  static const routneName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    // print(_questionPaperController.allPaperImages.length);
    return Scaffold(
      body: Obx(
        () => ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              child: SizedBox(
                height: 200,
                width: 200,
                child: FadeInImage(
                  image: NetworkImage(
                      _questionPaperController.allPaperImages[index]),
                  placeholder:
                      const AssetImage('assets/images/app_splash_logo.png'),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: _questionPaperController.allPaperImages.length,

          // padding: UIParameters.mobileScreenPadding,
          // shrinkWrap: true,
          // itemBuilder: (BuildContext context, int index) {
          //   return QuestionCart(
          //     model:
          //         _questionPaperController.allPaper[index],
          //   );
          // },
          // separatorBuilder:
          //     (BuildContext context, int index) {
          //   return SizedBox(
          //     height: 20,
          //   );
          // },
          // itemCount:
          //     _questionPaperController.allPaper.length,
        ),
      ),
      // GetBuilder<MyZoomDrawerController>(
      //   builder: (_) {
      //     return ZoomDrawer(
      //       borderRadius: 50.0,
      //       showShadow: true,
      //       angle: 0.0,
      //       style: DrawerStyle.defaultStyle,
      //       controller: _.zoomDrawerController,
      //       slideWidth: MediaQuery.of(context).size.width * 0.7,
      //       menuScreen: MyMenuScreen(),
      //       mainScreen: Container(
      //         decoration: BoxDecoration(gradient: mainGradient()),
      //         child: SafeArea(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Padding(
      //                 padding: EdgeInsets.all(mobileScreenPadding),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     AppCircleButton(
      //                       child: Icon(
      //                         AppIcons.menuLeft,
      //                         size: 24,
      //                       ),
      //                       onTap: controller.toggleDrawer,
      //                     ),
      //                     SizedBox(
      //                       height: 10,
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.symmetric(vertical: 10.0),
      //                       child: Row(
      //                         children: [
      //                           Icon(
      //                             AppIcons.peace,
      //                             size: 20,
      //                           ),
      //                           SizedBox(
      //                             width: 5,
      //                           ),
      //                           Text(
      //                             'hello friend',
      //                             style: detailText.copyWith(
      //                               color: onSurfaceTextColor,
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                     ),
      //                     Text(
      //                       'What do you want to learn today?',
      //                       style: headerText,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //               Expanded(
      //                 flex: 1,
      //                 child: Padding(
      //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //                   child: ContentArea(
      //                     addPadding: false,
      //                     child: Obx(
      //                       () => ListView.separated(
      //                         itemBuilder: (BuildContext context, int index) {
      //                           return ClipRRect(
      //                             child: SizedBox(
      //                               height: 200,
      //                               width: 200,
      //                               child: FadeInImage(
      //                                 image: NetworkImage(
      //                                     _questionPaperController
      //                                         .allPaperImages[index]),
      //                                 placeholder: AssetImage(
      //                                     'assets/images/app_splash_logo.png'),
      //                               ),
      //                             ),
      //                           );
      //                         },
      //                         separatorBuilder:
      //                             (BuildContext context, int index) {
      //                           return SizedBox(
      //                             height: 10,
      //                           );
      //                         },
      //                         itemCount: _questionPaperController
      //                             .allPaperImages.length,
      //
      //                         // padding: UIParameters.mobileScreenPadding,
      //                         // shrinkWrap: true,
      //                         // itemBuilder: (BuildContext context, int index) {
      //                         //   return QuestionCart(
      //                         //     model:
      //                         //         _questionPaperController.allPaper[index],
      //                         //   );
      //                         // },
      //                         // separatorBuilder:
      //                         //     (BuildContext context, int index) {
      //                         //   return SizedBox(
      //                         //     height: 20,
      //                         //   );
      //                         // },
      //                         // itemCount:
      //                         //     _questionPaperController.allPaper.length,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
