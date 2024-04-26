import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_mvvm/mvvm/utils/utils.dart';
import 'package:mvc_mvvm/mvvm/view_models/controller/login_view_model.dart';
import '../res/components/round_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: loginVM.ctrEmail.value,
              decoration: const InputDecoration(
                  hintText: "Enter email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: loginVM.ctrPassword.value,
              decoration: const InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            Obx(
              () => RoundButton(
                title: "Login",
                loading: loginVM.loading.value,
                onPressed: () => loginVM.loginApi(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
