import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/utility_screens/not_saved_screen.dart';
import 'package:edtech/screen/utility_screens/payment_screen.dart';
import 'package:edtech/screen/lesson_screen/your_courses_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/profile/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.profile),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const $AssetsImagesGen().profileImage.image(scale: 2),
              profileContainers(context,
                  text: KString.yourCourses,
                  onTap: () => Get.to(() => const YourCoursesScreen())),
              profileContainers(context,
                  text: KString.saved,
                  onTap: () => Get.to(() => const NotSaved())),
              profileContainers(context,
                  text: KString.payment,
                  onTap: () => Get.to(() => const PaymentScreen())),
              const Text(KString.logOut)
            ],
          ),
        ),
      ),
    );
  }
}
