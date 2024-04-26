import 'dart:async';

import 'package:get/get.dart';
import 'package:mvc_mvvm/mvvm/res/routes/routes_name.dart';

class SplashService {
  void isLoading() {
    Timer(
      const Duration(seconds: 5),
      () => Get.toNamed(RoutName.loginPage),
    );
  }
}
