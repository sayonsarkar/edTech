import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextButton modalFormButton({required String buttonText}) {
  return TextButton(
    style:
        TextButton.styleFrom(side: const BorderSide(color: KColor.appOrange)),
    onPressed: () {
      Get.back();
    },
    child: Text(
      buttonText,
      style: TextStyles.appButtonColor,
    ),
  );
}
