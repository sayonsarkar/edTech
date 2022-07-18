import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarWithLeadingIcon({required String text}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Text(
      text,
      style: TextStyles.appHeader,
    ),
    centerTitle: true,
    leading: Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: const Center(
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    ),
  );
}
