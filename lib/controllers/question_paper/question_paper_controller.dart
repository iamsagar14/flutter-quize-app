import 'package:flutterquizeapp/controllers/auth_controller.dart';
import 'package:flutterquizeapp/models/question_paper_models.dart';
import 'package:flutterquizeapp/services/firebase_storage_service.dart';
import 'package:get/get.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPaper = <QuestionPaperModel>[].obs;
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    print('this getallpapaer has been called ');
    List<String> imgName = ["biology", " chemistry", "maths", "physics"];
    try {
      for (var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl!);
        print('lengths of the firebase Storage ${allPaperImages.length}');
      }

      // QuerySnapshot<Map<String, dynamic>> data =
      //     await questionPaperRF.get() as QuerySnapshot<Map<String, dynamic>>;
      // final paperList =
      //     data.docs.map((paper) => QuestionPaperModel.fromSnapshot(paper));
      // allPaper.assignAll(paperList);
      // for (var paper in paperList) {
      //   var imgUrl =
      //       await Get.find<FirebaseStorageService>().getImage(paper.title);
      //   paper.imageUrl = imgUrl;
      // }
      // allPaper.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }

  navigateToQuestions(
      {required QuestionPaperModel paper, bool tryAgain = false}) {
    AuthController _authController = Get.find();
    if (_authController.isLoggedIn()) {
      if (tryAgain) {
        Get.back();
      } else {}
    } else {
      _authController.showLogInAlertDialogue();
    }
  }
}
