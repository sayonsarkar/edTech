import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/purchase_screen/Cart_screen.dart';
import 'package:edtech/screen/saved_courses/saved_courses.dart';
import 'package:edtech/screen/lesson_screen/your_courses_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/profile/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  final bool close;
  const ProfilePage({Key? key, required this.close}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.profile, close: close),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.profileImage.image(scale: 2),
              profileContainers(context,
                  text: KString.yourCourses,
                  onTap: () => Get.to(() => const YourCoursesScreen())),
              profileContainers(context,
                  text: KString.saved,
                  onTap: () => Get.to(() => const SavedCourses())),
              profileContainers(context,
                  text: KString.payment,
                  onTap: () => Get.to(() => const CartScreen())),
              Text(
                KString.logOut,
                style: TextStyles.greyText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
