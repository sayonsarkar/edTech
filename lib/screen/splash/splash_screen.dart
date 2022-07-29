import 'dart:async';

import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/onboarding/onboarding_screens.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Get.to(() => const OnboardingScreens()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.splashScreenImage.image(),
          const SizedBox(
            height: 50,
          ),
          Text(
            KString.codeFactory,
            style: TextStyles.splashScreenText,
          )
        ],
      ),
    );
  }
}
