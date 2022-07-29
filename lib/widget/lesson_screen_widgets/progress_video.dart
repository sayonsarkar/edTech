import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/lesson_screen/course_lesson.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget progressVideo(BuildContext context) {
  return GestureDetector(
    onTap: () => Get.to(() => const CourseLesson()),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            child:
                Assets.images.courseProgress.image(scale: 2, fit: BoxFit.fill),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  KString.courseHeaderText,
                  style: TextStyles.courseContainerHeader,
                ),
                const Text(KString.courseBodyText)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
