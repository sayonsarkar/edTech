import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget loginButton({
  required BuildContext context,
  required String text,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: KColor.appOrange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyles.introBtnText,
      )),
    ),
  );
}
