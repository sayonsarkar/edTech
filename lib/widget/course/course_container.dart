import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget courseContainer(BuildContext context, int index, {Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: KColor.containerBorderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: index == 0
                ? Assets.images.courseImage.image(scale: 2, fit: BoxFit.cover)
                : index == 1
                    ? Assets.images.courseAltImage
                        .image(scale: 2, fit: BoxFit.cover)
                    : Assets.images.altCourseImage
                        .image(scale: 2, fit: BoxFit.cover),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  KString.duration,
                  style: TextStyles.courseContainerSubHeader,
                ),
                Text(
                  KString.ui,
                  style: TextStyles.courseContainerHeader,
                ),
                Text(
                  KString.courseBodyText,
                  style: TextStyles.appButtonColor,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
