import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget inputTextField(TextEditingController controller,
    {required String hintText, Icon? suffixIcon}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: suffixIcon ?? const SizedBox.shrink(),
      hintText: hintText,
      hintStyle: TextStyles.hintText,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
    ),
  );
}
