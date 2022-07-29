import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/login/input_text_field.dart';
import 'package:edtech/widget/login/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWithLeadingIcon(text: KString.emptyString),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Assets.images.signUpImage.image(scale: 2),
                const Text(
                  KString.signUp,
                  style: TextStyles.loginHeaderText,
                ),
                Text(
                  KString.socialLoginText,
                  style: TextStyles.greyText,
                ),
                inputTextField(nameController, hintText: KString.name),
                inputTextField(mailController, hintText: KString.email),
                inputTextField(passwordController,
                    hintText: KString.password,
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined)),
                loginButton(context: context, text: KString.signUp),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    KString.logIn,
                    style: TextStyles.greyText,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
