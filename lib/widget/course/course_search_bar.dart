import 'package:edtech/gen/assets.gen.dart';
import 'package:flutter/material.dart';

Widget courseSearchBar(TextEditingController controller,
    {required String hintText}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: Assets.images.searchIcon.image(scale: 2),
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
