import 'package:edtech/utilities/colors.dart';
import 'package:flutter/material.dart';

Widget category({required String text}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: KColor.appBlueColor),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 12),
    ),
  );
}
