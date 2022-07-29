import 'package:edtech/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle splashScreenText = GoogleFonts.rubik(
    color: Colors.black,
    fontSize: 46,
    fontWeight: FontWeight.w600,
  );

  static TextStyle appBarHeader = GoogleFonts.rubik(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  static TextStyle hintText = GoogleFonts.rubik();

  static TextStyle greyText = GoogleFonts.rubik(
      color: KColor.appGreyColor, fontWeight: FontWeight.w500);

  static TextStyle introBtnText =
      GoogleFonts.rubik(color: Colors.white, fontSize: 18);

  static TextStyle introHeader = GoogleFonts.rubik(
      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 23);

  static const TextStyle introDesc = TextStyle(color: Colors.black);

  static const TextStyle loginHeaderText =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  static TextStyle appHeader =
      GoogleFonts.rubik(color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle profileContainersText =
      GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle courseContainerSubHeader =
      GoogleFonts.rubik(color: KColor.courseTextColor, fontSize: 12);
  static TextStyle courseContainerHeader =
      GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w500);
  static TextStyle progressheader =
      GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle orangeText = GoogleFonts.rubik(color: KColor.appOrange);

  static TextStyle appButtonColor = GoogleFonts.rubik(color: Colors.black);
  static TextStyle modalFormHeader = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle tabButtonText(int? activeTabIndex, int index) {
    return GoogleFonts.rubik(
      color: activeTabIndex == index ? Colors.black : Colors.grey,
      fontSize: 18,
    );
  }

  static TextStyle settingsSubHeaderText = GoogleFonts.rubik(
      color: KColor.appGreyColor, fontWeight: FontWeight.w400);
}
