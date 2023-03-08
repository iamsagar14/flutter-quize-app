import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterquizeapp/screens/splash/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../firebase_ref/references.dart';
import '../screens/login/login_screen.dart';
import '../widgets/dialogue/dialogue_widgets.dart';

class AuthController extends GetxController {
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  late FirebaseAuth _auth;
  final _user = Rxn<User>();
  late Stream<User?> _authStateChange;

  void initAuth() async {
    await Future.delayed(Duration(seconds: 3));
    _auth = FirebaseAuth.instance;
    _authStateChange = _auth.authStateChanges();
    _authStateChange.listen((User? user) {
      _user.value = user;
    });
    navigateToIntroduction();
  }

  signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      GoogleSignInAccount? account = await _googleSignIn.signIn();
      if (account != null) {
        final _authAccount = await account.authentication;
        final _credential = GoogleAuthProvider.credential(
          idToken: _authAccount.idToken,
          accessToken: _authAccount.accessToken,
        );
        await _auth.signInWithCredential(_credential);
        await saveUser(account);
        navigateToHomePage();
      }
    } on Exception catch (error) {}
  }

  User? getUser() {
    _user.value = _auth.currentUser;
    return _user.value;
  }

  saveUser(GoogleSignInAccount account) {
    userRF.doc(account.email).set({
      'email': account.email,
      'name': account.displayName,
      'profilePic': account.photoUrl,
    });
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      navigateToHomePage();
    } on FirebaseException catch (e) {}
  }

  void navigateToIntroduction() {
    Get.offAllNamed('/introductions');
  }

  navigateToHomePage() {
    Get.offAllNamed(HomeScreen.routneName);
  }

  showLogInAlertDialogue() {
    Get.dialog(
      Dialogs.questionStartDialogue(onTap: () {
        Get.back();
        navigateToLoginnPage();
      }),
      barrierDismissible: false,
    );
  }

  navigateToLoginnPage() {
    Get.toNamed(LogInScreen.routeName);
  }

  bool isLoggedIn() {
    return _auth.currentUser != null;
  }
}
