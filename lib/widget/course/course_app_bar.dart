import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/notification/notification_page.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSize courseAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              KString.hello,
              style: GoogleFonts.rubik(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            KString.userName,
            style: TextStyles.appBarHeader,
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () => Get.to(() => const NotificationPage()),
          child: Assets.images.notificationIcon.image(scale: 2),
        ),
      ],
    ),
  );
}
