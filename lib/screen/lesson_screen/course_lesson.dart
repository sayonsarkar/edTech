import 'package:edtech/screen/lesson_screen/discuss_screen.dart';
import 'package:edtech/screen/lesson_screen/lesson_screen.dart';
import 'package:edtech/screen/lesson_screen/test_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/lesson_screen_widgets/course_tab_bar.dart';
import 'package:flutter/material.dart';

class CourseLesson extends StatefulWidget {
  const CourseLesson({Key? key}) : super(key: key);

  @override
  State<CourseLesson> createState() => _CourseLessonState();
}

class _CourseLessonState extends State<CourseLesson>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int activeTabIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);

    tabController?.addListener(() {
      setState(() {
        activeTabIndex = tabController?.index ?? 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.courseHeaderText),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Text(
              KString.tagsForHeader,
              style: TextStyles.courseContainerHeader,
            ),
            const SizedBox(height: 10),
            Text(
              KString.greyCount,
              style: TextStyles.greyText,
            ),
            const SizedBox(height: 10),
            tabBar(context, tabController, activeTabIndex, onTap: (index) {
              setState(() {
                activeTabIndex = index;
              });
            }),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  LessonScreen(),
                  TestScreen(),
                  DiscussScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
