/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Price.png
  AssetGenImage get price => const AssetGenImage('assets/images/Price.png');

  /// File path: assets/images/congratulations_image.png
  AssetGenImage get congratulationsImage =>
      const AssetGenImage('assets/images/congratulations_image.png');

  /// File path: assets/images/course_detail_image.png
  AssetGenImage get courseDetailImage =>
      const AssetGenImage('assets/images/course_detail_image.png');

  /// File path: assets/images/course_image.png
  AssetGenImage get courseImage =>
      const AssetGenImage('assets/images/course_image.png');

  /// File path: assets/images/course_progress.png
  AssetGenImage get courseProgress =>
      const AssetGenImage('assets/images/course_progress.png');

  /// File path: assets/images/email.png
  AssetGenImage get email => const AssetGenImage('assets/images/email.png');

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/facebook.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/images/instagram.png');

  /// File path: assets/images/intro_1.png
  AssetGenImage get intro1 => const AssetGenImage('assets/images/intro_1.png');

  /// File path: assets/images/intro_2.png
  AssetGenImage get intro2 => const AssetGenImage('assets/images/intro_2.png');

  /// File path: assets/images/intro_3.png
  AssetGenImage get intro3 => const AssetGenImage('assets/images/intro_3.png');

  /// File path: assets/images/lesson_video.png
  AssetGenImage get lessonVideo =>
      const AssetGenImage('assets/images/lesson_video.png');

  /// File path: assets/images/login_image.png
  AssetGenImage get loginImage =>
      const AssetGenImage('assets/images/login_image.png');

  /// File path: assets/images/name.png
  AssetGenImage get name => const AssetGenImage('assets/images/name.png');

  /// File path: assets/images/not_saved_image.png
  AssetGenImage get notSavedImage =>
      const AssetGenImage('assets/images/not_saved_image.png');

  /// File path: assets/images/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/images/notification.png');

  /// File path: assets/images/password.png
  AssetGenImage get password =>
      const AssetGenImage('assets/images/password.png');

  /// File path: assets/images/profile_icon.png
  AssetGenImage get profileIcon =>
      const AssetGenImage('assets/images/profile_icon.png');

  /// File path: assets/images/profile_image.png
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile_image.png');

  /// File path: assets/images/progress_1.png
  AssetGenImage get progress1 =>
      const AssetGenImage('assets/images/progress_1.png');

  /// File path: assets/images/progress_2.png
  AssetGenImage get progress2 =>
      const AssetGenImage('assets/images/progress_2.png');

  /// File path: assets/images/question_image.png
  AssetGenImage get questionImage =>
      const AssetGenImage('assets/images/question_image.png');

  /// File path: assets/images/settings_icon.png
  AssetGenImage get settingsIcon =>
      const AssetGenImage('assets/images/settings_icon.png');

  /// File path: assets/images/settings_image.png
  AssetGenImage get settingsImage =>
      const AssetGenImage('assets/images/settings_image.png');

  /// File path: assets/images/signUpImage.png
  AssetGenImage get signUpImage =>
      const AssetGenImage('assets/images/signUpImage.png');

  /// File path: assets/images/splash_screen_image.png
  AssetGenImage get splashScreenImage =>
      const AssetGenImage('assets/images/splash_screen_image.png');

  /// File path: assets/images/test_card_image.png
  AssetGenImage get testCardImage =>
      const AssetGenImage('assets/images/test_card_image.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
