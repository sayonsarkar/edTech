import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/lesson_screen_widgets/progress_container.dart';
import 'package:edtech/widget/lesson_screen_widgets/progress_video.dart';
import 'package:flutter/material.dart';

class CourseProgressScreen extends StatelessWidget {
  const CourseProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.courseHeaderText),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              progressVideo(context),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return progressContainer(index, context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
