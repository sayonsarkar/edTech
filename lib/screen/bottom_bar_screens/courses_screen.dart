import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/product_detail_screen/course_detail_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/course/course_app_bar.dart';
import 'package:edtech/widget/course/course_container.dart';
import 'package:edtech/widget/course/course_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: courseAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            courseSearchBar(searchController, hintText: KString.searchCourse),
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
                        Assets.images.css.image(scale: 2),
                        Assets.images.ux.image(scale: 2),
                        Assets.images.swift.image(scale: 2),
                        Assets.images.ui.image(scale: 2),
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
                  return courseContainer(
                    context,
                    index,
                    onTap: () => Get.to(
                      () => const CourseDetailScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
