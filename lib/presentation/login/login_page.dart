import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app_task/presentation/bottom_navigation/bottom_navigation_bar.dart';
import 'package:login_app_task/presentation/home/home_page.dart';
import 'package:login_app_task/presentation/login/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Log In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              text: "Email",
              textEditingController: emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              text: "Password",
              textEditingController: passwordController,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const CustomNavigationBar()),
                      (route) => false);
                }
              },
              child: Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  minimumSize:
                      MaterialStateProperty.all(const Size.fromHeight(55))),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text.rich(
              TextSpan(
                  text: "Forgot Password? ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    ));
  }
}
