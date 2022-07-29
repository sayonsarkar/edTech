import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget onBoardingButton({
  required BuildContext context,
  required String text,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: KColor.appOrange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyles.introBtnText,
      )),
    ),
  );
}
