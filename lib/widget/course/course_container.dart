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
              child: courseImage(index == 0
                  ? Assets.images.courseImage.image(fit: BoxFit.cover)
                  : index == 1
                      ? Assets.images.altCourseImage.image(fit: BoxFit.cover)
                      : Assets.images.courseAltImage.image(fit: BoxFit.cover))),
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

Widget courseImage(image) {
  return Stack(
    alignment: Alignment.bottomRight,
    children: [
      image,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Assets.images.price.image(scale: 2),
      )
    ],
  );
}
