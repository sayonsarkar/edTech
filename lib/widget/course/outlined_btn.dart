import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:flutter/material.dart';

Widget outlinedButton(BuildContext context, {Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: KColor.appOrange),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(child: Text(KString.begin)),
    ),
  );
}
