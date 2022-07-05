import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/login_page.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/onboarding/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final pageViewController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              padding: const EdgeInsets.only(bottom: 80, top: 40),
              child: PageView(
                controller: pageViewController,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                  });
                },
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const $AssetsImagesGen().intro1.image(),
                      const Text(
                        KString.intro1,
                        textAlign: TextAlign.center,
                        style: TextStyles.introHeader,
                      ),
                      const Text(
                        KString.introdesc1,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const $AssetsImagesGen().intro2.image(),
                      const Text(
                        KString.intro2,
                        textAlign: TextAlign.center,
                        style: TextStyles.introHeader,
                      ),
                      const Text(
                        KString.introdesc2,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const $AssetsImagesGen().intro3.image(),
                      const Text(
                        KString.intro3,
                        style: TextStyles.introHeader,
                      ),
                      const Text(
                        KString.introdesc3,
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: pageViewController,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotWidth: 8,
                dotHeight: 8,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          onBoardingButton(
            context: context,
            text: isLastPage ? KString.start : KString.next,
            onTap: () => isLastPage
                ? Get.to(() => const LoginPage())
                : pageViewController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
          ),
        ],
      ),
    );
  }
}
