import 'package:edtech/utilities/colors.dart';
import 'package:flutter/material.dart';

Widget progressColumn(BuildContext context, int index) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: SizedBox(
      height: 10,
      width: MediaQuery.of(context).size.width * 0.73,
      child: LinearProgressIndicator(
        minHeight: 20,
        value: index == 0 ? 0.6 : 0.2,
        backgroundColor: Colors.white,
        valueColor: const AlwaysStoppedAnimation<Color>(KColor.appBlueColor),
      ),
    ),
  );
}
