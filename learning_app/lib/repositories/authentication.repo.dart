import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:learning_app/screens/login/login_screen.dart';

import '../screens/bottom_nav_bar/bottom_nav_bar.dart';
import '../utils/exceptions/firebase_auth_exceptions.dart';
import '../utils/exceptions/firebase_exceptions.dart';
import '../utils/exceptions/format_exceptions.dart';
import '../utils/exceptions/platform_exceptions.dart';

class AuthenticationRepo extends GetxController {


  //ccheck user login or not
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    screenRedirect();
  }
  final _auth=FirebaseAuth.instance;

  // if user already login then go in app else user go loginn page
  screenRedirect (){
    final user= _auth.currentUser;
    if (user!=null){
      Get.offAll(BotttomNavBar());
    }
    else {
      Get.to((LoginScreen()));
    }
  }


  // register user with eemail and password
  Future<void> registerUser(String name, String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong';
    }
  }

  //login user with email and password
  signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong';
    }
  }
}
