import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/lesson_screen/question_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/course/outlined_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Assets.images.testCardImage.image(scale: 2),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index == 0
                          ? KString.quiz1
                          : index == 1
                              ? KString.quiz2
                              : KString.quiz3,
                      style: TextStyles.orangeText,
                    ),
                    Text(
                      KString.tagsForHeader,
                      style: TextStyles.courseContainerHeader,
                    ),
                    Text(
                      KString.testDesc,
                      textAlign: TextAlign.justify,
                      style: TextStyles.greyText,
                    ),
                  ],
                ),
              ),
              outlinedButton(
                context,
                onTap: () {
                  Get.to(() => const QuestionScreen());
                },
              )
            ],
          ),
        );
      },
    );
  }
}
