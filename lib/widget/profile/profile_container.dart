import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget profileContainers(BuildContext context, {required String text}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)),
    child: Center(
        child: Text(
      text,
      style: TextStyles.profileContainersText,
    )),
  );
}
