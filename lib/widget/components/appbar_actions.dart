import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarWithActions() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          KString.hello,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w300, fontSize: 14),
        ),
        Text(KString.userName, style: TextStyles.appHeader),
      ],
    ),
    actions: [
      Container(
        padding: const EdgeInsets.only(left: 8, right: 8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: const Center(
          child: Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
        ),
      )
    ],
  );
}
