


import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvc_mvvm/mvvm/repository/login_repository/login_repository.dart';
import 'package:mvc_mvvm/mvvm/utils/utils.dart';

class LoginViewModel extends GetxController{
  final ctrEmail = TextEditingController().obs;
  final ctrPassword = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  final _api = LoginRepository();
  RxBool loading = false.obs;
  void loginApi(){
    loading.value = true;
    Map data = {
      "email": ctrEmail.value.text.trim(),
      "password":ctrPassword.value.text.trim()
    };
    log("Data => $data");
    _api.loginApi(data).then((value){
     loading.value = false;
     Utils.snackBar("Login", "Login Successfully");
   }).onError((error, stackTrace){
     log("Error: $error");
     loading.value = false;
     Utils.snackBar("Error", error.toString());
   });
  }
}