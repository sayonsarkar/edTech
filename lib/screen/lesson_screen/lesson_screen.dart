import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/cupertino.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.images.lessonVideo.image(scale: 1),
          const Text(
            KString.introduction,
            style: TextStyles.progressheader,
          ),
          const Text(
            KString.lessonDesc,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
