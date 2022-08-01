import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

class DiscussScreen extends StatelessWidget {
  const DiscussScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return FittedBox(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(color: KColor.appGreyColor, blurRadius: 2.0)
                  ]),
              child: Column(
                children: [
                  Text(KString.dummyText1, style: TextStyles.modalFormHeader),
                  const SizedBox(height: 16.0),
                  // Image(image: AssetImage(manShoes)),
                  const SizedBox(height: 16.0),
                  Text(KString.dummyText2, style: TextStyles.greyText),
                  const SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(KString.dummyDate, style: TextStyles.greyText),
                  )
                ],
              ),
            ),
          );
        });
  }
}
