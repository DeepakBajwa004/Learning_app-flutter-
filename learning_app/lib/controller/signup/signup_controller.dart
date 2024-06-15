import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{

  TextEditingController email=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();
  RxBool isStudent=true.obs;
  RxBool isTutor=false.obs;
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  String? emailValidator(String?value){
    if(value!.isEmpty){
      return 'Enter a valid email address';
    }
    return 'null';
  }
}