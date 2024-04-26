import 'package:get/get.dart';
import 'package:mvc_mvvm/mvvm/res/routes/routes_name.dart';
import 'package:mvc_mvvm/mvvm/view/login_page.dart';

import '../../view/splashScreen.dart';

sealed class AppRouts {
  static appRout() => [
    GetPage(
      name: RoutName.loginPage, page: () => const LoginPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),
        GetPage(
            name: RoutName.splashPage, page: () => const SplashPage(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
