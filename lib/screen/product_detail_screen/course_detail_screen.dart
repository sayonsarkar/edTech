import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/purchase_screen/cart_screen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/login/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.courseHeaderText),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.courseDetailImage.image(),
            Align(
                alignment: Alignment.centerRight,
                child: Assets.images.price.image(scale: 2)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    KString.courseHeader,
                    style: TextStyles.courseContainerHeader,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    KString.courseDetail,
                    textAlign: TextAlign.justify,
                    style: TextStyles.detilsTextStyle,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    KString.dutationHeader,
                    style: TextStyles.courseContainerHeader,
                  ),
                  const SizedBox(height: 10),
                  const Text(KString.duration),
                ],
              ),
            ),
            const Spacer(),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: loginButton(
                    context: context,
                    text: KString.addToCart,
                    onTap: () => Get.to(() => const CartScreen())))
          ],
        ),
      ),
    );
  }
}
