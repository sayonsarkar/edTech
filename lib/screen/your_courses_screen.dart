import 'package:edtech/screen/course_progress_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/course/course_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourCoursesScreen extends StatelessWidget {
  const YourCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.yourCourses),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 3,
          itemBuilder: (context, index) {
            return courseContainer(context,
                onTap: () => Get.to(() => const CourseProgressScreen()));
          }),
    );
  }
}
