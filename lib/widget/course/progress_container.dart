import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/course/progress_column.dart';
import 'package:flutter/material.dart';

Widget progressContainer(int index, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.13,
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)),
    child: Row(
      children: [
        SizedBox(
          width: 70,
          height: 60,
          child: index == 0
              ? Assets.images.progress1.image(scale: 2)
              : Assets.images.progress2.image(scale: 2),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              index == 0 ? KString.progressHeader1 : KString.progressHeader2,
              style: TextStyles.progressheader,
            ),
            progressColumn(context)
          ],
        )
      ],
    ),
  );
}
