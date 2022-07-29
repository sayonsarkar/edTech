import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/onboarding/onboarding_button.dart';
import 'package:flutter/material.dart';

class NotSaved extends StatelessWidget {
  const NotSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.saved),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Assets.images.notSavedImage.image(),
            const SizedBox(height: 20),
            Text(
              KString.notSavedText,
              style: TextStyles.courseContainerHeader,
            ),
            const SizedBox(height: 20),
            const Text(
              KString.notSavedsubTitle,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            onBoardingButton(context: context, text: KString.continueText)
          ],
        ),
      ),
    );
  }
}
