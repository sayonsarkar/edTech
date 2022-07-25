import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/login/input_text_field.dart';
import 'package:edtech/widget/login/login_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const $AssetsImagesGen().signUpImage.image(scale: 2),
                  const Text(
                    KString.signUp,
                    style: TextStyles.loginHeaderText,
                  ),
                  const Text(KString.socialLoginText),
                  inputTextField(hintText: KString.name),
                  inputTextField(hintText: KString.email),
                  inputTextField(
                      hintText: KString.password,
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined)),
                  loginButton(context: context, text: KString.signUp),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(KString.logIn),
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
