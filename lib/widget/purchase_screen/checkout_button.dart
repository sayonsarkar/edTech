import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: KColor.appOrange,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyles.introBtnText,
        ),
      ),
    );
  }
}
