import 'package:edtech/screen/product_detail_screen/course_detail_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/appbar_actions.dart';
import 'package:edtech/widget/course/course_category.dart';
import 'package:edtech/widget/course/course_container.dart';
import 'package:edtech/widget/login/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithActions(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            inputTextField(
              hintText: KString.searchCourse,
              suffixIcon: const Icon(Icons.search),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Text(KString.category),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        category(text: KString.css),
                        category(text: KString.css),
                        category(text: KString.css),
                        category(text: KString.css),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return courseContainer(context,
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
