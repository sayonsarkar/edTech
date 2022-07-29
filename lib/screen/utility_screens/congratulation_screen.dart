import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:flutter/material.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.results),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Assets.images.congratulationsImage.image(),
            const SizedBox(height: 20),
            Text(
              KString.congratulations,
              style: TextStyles.courseContainerHeader,
            ),
            const SizedBox(height: 20),
            const Text(
              KString.congratulationsSubHeader,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Assets.images.facebook.image(scale: 2),
                  Assets.images.instagram.image(scale: 2),
                  Assets.images.google.image(scale: 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
