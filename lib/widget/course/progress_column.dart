import 'package:edtech/utilities/colors.dart';
import 'package:flutter/material.dart';

Widget progressColumn(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: SizedBox(
      height: 10,
      width: MediaQuery.of(context).size.width * 0.73,
      child: const LinearProgressIndicator(
        minHeight: 20,
        value: 1,
        backgroundColor: Colors.white,
        valueColor: AlwaysStoppedAnimation<Color>(KColor.appBlueColor),
      ),
    ),
  );
}
