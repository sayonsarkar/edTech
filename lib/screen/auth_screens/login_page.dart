import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/auth_screens/sign_up_page.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/bottom_bar.dart';
import 'package:edtech/widget/login/input_text_field.dart';
import 'package:edtech/widget/login/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Assets.images.loginImage.image(scale: 2),
                  const Text(
                    KString.logIn,
                    style: TextStyles.loginHeaderText,
                  ),
                  const Text(KString.socialLoginText),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Assets.images.facebook.image(scale: 2),
                        Assets.images.instagram.image(scale: 2),
                        Assets.images.google.image(scale: 2),
                      ],
                    ),
                  ),
                  inputTextField(emailController, hintText: KString.email),
                  inputTextField(passwordController,
                      hintText: KString.password,
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined)),
                  Text(
                    KString.forgotPassword,
                    style: TextStyles.greyText,
                  ),
                  loginButton(
                      context: context,
                      text: KString.logIn,
                      onTap: () => Get.to(() => const BottomBar())),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SignUpPage());
                    },
                    child: Text(KString.signUp, style: TextStyles.greyText),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
