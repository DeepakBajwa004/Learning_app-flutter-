import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Loaders {
  static successfullySnackBar({
    required title, duration = 900, required message
  }) {
    Get.snackbar(
      title,
      message,
      duration: Duration(milliseconds: duration),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blue,
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.check, color: Colors.white,),
    );
  }
  static errorSnackBar({
    required title, duration = 900, required message
  }) {
    Get.snackbar(
      title,
      message,
      duration: Duration(milliseconds: duration),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.check, color: Colors.white,),
    );
  }
  static warningSnackBar({
    required title, duration = 900, required message
  }) {
    Get.snackbar(
      title,
      message,
      duration: Duration(milliseconds: duration),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orangeAccent,
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.check, color: Colors.white,),
    );
  }
}
