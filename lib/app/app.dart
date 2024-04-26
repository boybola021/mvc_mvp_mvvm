import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../mvvm/res/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      getPages: AppRouts.appRout(),
    );
  }
}
