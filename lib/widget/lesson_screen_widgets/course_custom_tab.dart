import 'package:edtech/utilities/colors.dart';
import 'package:flutter/material.dart';

Tab customTab(
  BuildContext context, {
  required String title,
  required int index,
  int? activeTabIndex,
}) {
  return Tab(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: KColor.tabGreyColor,
        borderRadius: index == 0
            ? const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              )
            : index == 2
                ? const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                : BorderRadius.zero,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: activeTabIndex == index ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
      ),
    ),
  );
}
