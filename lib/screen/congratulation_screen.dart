import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:flutter/material.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: 'Results'),
      body: Column(
        children: [
          const $AssetsImagesGen().congratulationsImage.image(),
          const Text('Congratulations'),
          const Text(KString.congratulationsSubHeader),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const $AssetsImagesGen().facebook.image(scale: 2),
                const $AssetsImagesGen().instagram.image(scale: 2),
                const $AssetsImagesGen().google.image(scale: 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
