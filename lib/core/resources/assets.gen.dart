/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/colors.xml
  String get colors => 'assets/color/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Poppins-Black.ttf
  String get poppinsBlack => 'assets/fonts/Poppins-Black.ttf';

  /// File path: assets/fonts/Poppins-Bold.ttf
  String get poppinsBold => 'assets/fonts/Poppins-Bold.ttf';

  /// File path: assets/fonts/Poppins-ExtraBold.ttf
  String get poppinsExtraBold => 'assets/fonts/Poppins-ExtraBold.ttf';

  /// File path: assets/fonts/Poppins-ExtraLight.ttf
  String get poppinsExtraLight => 'assets/fonts/Poppins-ExtraLight.ttf';

  /// File path: assets/fonts/Poppins-Italic.ttf
  String get poppinsItalic => 'assets/fonts/Poppins-Italic.ttf';

  /// File path: assets/fonts/Poppins-Light.ttf
  String get poppinsLight => 'assets/fonts/Poppins-Light.ttf';

  /// File path: assets/fonts/Poppins-Medium.ttf
  String get poppinsMedium => 'assets/fonts/Poppins-Medium.ttf';

  /// File path: assets/fonts/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/fonts/Poppins-Regular.ttf';

  /// File path: assets/fonts/Poppins-SemiBold.ttf
  String get poppinsSemiBold => 'assets/fonts/Poppins-SemiBold.ttf';

  /// File path: assets/fonts/Poppins-Thin.ttf
  String get poppinsThin => 'assets/fonts/Poppins-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        poppinsBlack,
        poppinsBold,
        poppinsExtraBold,
        poppinsExtraLight,
        poppinsItalic,
        poppinsLight,
        poppinsMedium,
        poppinsRegular,
        poppinsSemiBold,
        poppinsThin
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_launcher.png
  AssetGenImage get icLauncher =>
      const AssetGenImage('assets/images/ic_launcher.png');

  /// File path: assets/images/ic_launcher_foreground.png
  AssetGenImage get icLauncherForeground =>
      const AssetGenImage('assets/images/ic_launcher_foreground.png');

  /// File path: assets/images/ic_launcher_foreground_stg.png
  AssetGenImage get icLauncherForegroundStg =>
      const AssetGenImage('assets/images/ic_launcher_foreground_stg.png');

  /// File path: assets/images/ic_launcher_stg.png
  AssetGenImage get icLauncherStg =>
      const AssetGenImage('assets/images/ic_launcher_stg.png');

  /// File path: assets/images/ic_logo.png
  AssetGenImage get icLogo => const AssetGenImage('assets/images/ic_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icLauncher,
        icLauncherForeground,
        icLauncherForegroundStg,
        icLauncherStg,
        icLogo
      ];
}

class $AssetsLangsGen {
  const $AssetsLangsGen();

  /// File path: assets/langs/en_EN.json
  String get enEN => 'assets/langs/en_EN.json';

  /// File path: assets/langs/uz_UZ.json
  String get uzUZ => 'assets/langs/uz_UZ.json';

  /// List of all assets
  List<String> get values => [enEN, uzUZ];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLangsGen langs = $AssetsLangsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
