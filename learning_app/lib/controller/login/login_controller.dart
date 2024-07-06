
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../repositories/authentication.repo.dart';
import '../../screens/category/category_screen.dart';
import '../../utils/Loaders/loaders.dart';

class LoginController extends GetxController{

  final _authrepo =Get.put(AuthenticationRepo());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();



  //signn in user with email and password
  signInWithEmailAndPassword () async{
    try {
     await _authrepo.signIn(email.text, password.text);
     Loaders.successfullySnackBar(
         title: "Congratulations",
         message: "Your Account created Successfully");
     Get.offAll(CategoryScreen());
    }
    catch(e){
      Loaders.errorSnackBar(title: "Oh Snap", message: e);
      print(e);
    }
  }
}