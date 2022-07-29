import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/utility_screens/congratulation_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/lesson_screen_widgets/option_container.dart';
import 'package:edtech/widget/onboarding/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.emptyString),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                KString.questionCount,
                style: TextStyles.greyText,
              ),
              Text(
                KString.questiontext,
                style: TextStyles.courseContainerHeader,
                textAlign: TextAlign.center,
              ),
              Assets.images.questionImage.image(
                scale: 1,
              ),
              optionContainer(
                  context,
                  option: KString.answerA,
                  optionNumber: KString.optionA,
                  selected, onTap: () {
                setState(() {
                  selected = KString.optionA;
                });
              }),
              optionContainer(
                  context,
                  option: KString.answerB,
                  optionNumber: KString.optionB,
                  selected, onTap: () {
                setState(() {
                  selected = KString.optionB;
                });
              }),
              optionContainer(
                  context,
                  option: KString.answerC,
                  optionNumber: KString.optionC,
                  selected, onTap: () {
                setState(() {
                  selected = KString.optionC;
                });
              }),
              onBoardingButton(
                  context: context,
                  text: KString.continueText,
                  onTap: () => Get.to(() => const CongratulationScreen()))
            ],
          ),
        ),
      ),
    );
  }
}
