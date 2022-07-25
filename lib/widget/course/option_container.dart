import 'package:edtech/utilities/colors.dart';
import 'package:flutter/material.dart';

Widget optionContainer(BuildContext context, String? selected,
    {required String optionNumber, required String option, Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: selected == optionNumber
            ? KColor.appOrange.withOpacity(0.1)
            : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: selected == optionNumber ? KColor.appOrange : Colors.grey),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(optionNumber),
          const SizedBox(width: 15),
          Text(option),
        ],
      ),
    ),
  );
}
