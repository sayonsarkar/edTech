import 'package:flutter/material.dart';

Widget inputTextField({required String hintText, Icon? suffixIcon}) {
  return TextFormField(
    decoration: InputDecoration(
      suffixIcon: suffixIcon ?? const SizedBox.shrink(),
      hintText: hintText,
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
