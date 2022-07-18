import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget settingsContainer(
  image,
  BuildContext context,
  Widget trailing, {
  required String text,
  String? subText,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)),
    child: Row(
      children: [
        image,
        const SizedBox(width: 10),
        subText == null
            ? Text(
                text,
                style: TextStyles.profileContainersText,
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyles.profileContainersText,
                  ),
                  Text(subText)
                ],
              ),
        const Spacer(),
        trailing
      ],
    ),
  );
}
