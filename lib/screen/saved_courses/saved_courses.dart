import 'package:edtech/screen/product_detail_screen/course_detail_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/course/course_container.dart';
import 'package:edtech/widget/course/course_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedCourses extends StatefulWidget {
  const SavedCourses({Key? key}) : super(key: key);

  @override
  State<SavedCourses> createState() => _SavedCoursesState();
}

class _SavedCoursesState extends State<SavedCourses> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.saved),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: courseSearchBar(searchController,
                  hintText: KString.searchCourse),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return courseContainer(context, index,
                      onTap: () => Get.to(() => const CourseDetailScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
