

import 'package:flutter/material.dart';
import 'package:mvc_mvvm/mvvm/view_models/services/splash_services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashService splashService =  SplashService();
  @override
  void initState() {
    super.initState();
    splashService.isLoading();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("SlashPage",style: TextStyle(fontSize: 20),),
      )
    );
  }
}
