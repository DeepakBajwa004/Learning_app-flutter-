import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{

  String validationMsg ='';

  TextEditingController email=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();
  RxBool isStudent=true.obs;
  RxBool isTutor=false.obs;
  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  String?  nameValidator(String?value){
      if (value == null || value.isEmpty) {
        return "Name is required";
      }
      if (value.length < 6) {
        return "Name must be at least 6 characters long";
      }
      return null;
  }

  String? emailValidator(String?value){
    if(value!.isEmpty){
      return 'Enter a valid email address';
    }
    return null;
  }

  String? passwordValidator(String?value){
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one Uppercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain Digits";
    }
    return null;
  }


}