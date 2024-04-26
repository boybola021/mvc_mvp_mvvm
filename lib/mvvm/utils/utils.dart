import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

sealed class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {}

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: const Color(0xff000000),
        gravity: ToastGravity.BOTTOM);
  }

  static toastCenter(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: const Color(0xff000000),
        gravity: ToastGravity.CENTER);
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
    );
  }
}
