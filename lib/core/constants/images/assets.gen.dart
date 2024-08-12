/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/logos
  $AssetsImagesLogosGen get logos => const $AssetsImagesLogosGen();

  /// Directory path: assets/images/onboarding
  $AssetsImagesOnboardingGen get onboarding => const $AssetsImagesOnboardingGen();

  /// Directory path: assets/images/splash
  $AssetsImagesSplashGen get splash => const $AssetsImagesSplashGen();
}

class $AssetsImagesLogosGen {
  const $AssetsImagesLogosGen();

  /// File path: assets/images/logos/apple_logo.svg
  SvgGenImage get appleLogo => const SvgGenImage('assets/images/logos/apple_logo.svg');

  /// File path: assets/images/logos/apple_logo.svg.vec
  SvgGenImage get appleLogoSvg => const SvgGenImage.vec('assets/images/logos/apple_logo.svg.vec');

  /// File path: assets/images/logos/facebook_logo.svg
  SvgGenImage get facebookLogo => const SvgGenImage('assets/images/logos/facebook_logo.svg');

  /// File path: assets/images/logos/facebook_logo.svg.vec
  SvgGenImage get facebookLogoSvg =>
      const SvgGenImage.vec('assets/images/logos/facebook_logo.svg.vec');

  /// File path: assets/images/logos/google_logo.svg
  SvgGenImage get googleLogo => const SvgGenImage('assets/images/logos/google_logo.svg');

  /// File path: assets/images/logos/google_logo.svg.vec
  SvgGenImage get googleLogoSvg => const SvgGenImage.vec('assets/images/logos/google_logo.svg.vec');

  /// File path: assets/images/logos/store_logo.png
  AssetGenImage get storeLogo => const AssetGenImage('assets/images/logos/store_logo.png');

  /// List of all assets
  List<dynamic> get values => [
        appleLogo,
        appleLogoSvg,
        facebookLogo,
        facebookLogoSvg,
        googleLogo,
        googleLogoSvg,
        storeLogo
      ];
}

class $AssetsImagesOnboardingGen {
  const $AssetsImagesOnboardingGen();

  /// File path: assets/images/onboarding/onboarding_fruit_basket_image.svg
  SvgGenImage get onboardingFruitBasketImage =>
      const SvgGenImage('assets/images/onboarding/onboarding_fruit_basket_image.svg');

  /// File path: assets/images/onboarding/onboarding_fruit_basket_image.svg.vec
  SvgGenImage get onboardingFruitBasketImageSvg =>
      const SvgGenImage.vec('assets/images/onboarding/onboarding_fruit_basket_image.svg.vec');

  /// File path: assets/images/onboarding/onboarding_pineapple_image.svg
  SvgGenImage get onboardingPineappleImage =>
      const SvgGenImage('assets/images/onboarding/onboarding_pineapple_image.svg');

  /// File path: assets/images/onboarding/onboarding_pineapple_image.svg.vec
  SvgGenImage get onboardingPineappleImageSvg =>
      const SvgGenImage.vec('assets/images/onboarding/onboarding_pineapple_image.svg.vec');

  /// File path: assets/images/onboarding/onboarding_shape1_backgroundimage.svg
  SvgGenImage get onboardingShape1Backgroundimage =>
      const SvgGenImage('assets/images/onboarding/onboarding_shape1_backgroundimage.svg');

  /// File path: assets/images/onboarding/onboarding_shape1_backgroundimage.svg.vec
  SvgGenImage get onboardingShape1BackgroundimageSvg =>
      const SvgGenImage.vec('assets/images/onboarding/onboarding_shape1_backgroundimage.svg.vec');

  /// File path: assets/images/onboarding/onboarding_shape2_backgroundimage.svg
  SvgGenImage get onboardingShape2Backgroundimage =>
      const SvgGenImage('assets/images/onboarding/onboarding_shape2_backgroundimage.svg');

  /// File path: assets/images/onboarding/onboarding_shape2_backgroundimage.svg.vec
  SvgGenImage get onboardingShape2BackgroundimageSvg =>
      const SvgGenImage.vec('assets/images/onboarding/onboarding_shape2_backgroundimage.svg.vec');

  /// List of all assets
  List<SvgGenImage> get values => [
        onboardingFruitBasketImage,
        onboardingFruitBasketImageSvg,
        onboardingPineappleImage,
        onboardingPineappleImageSvg,
        onboardingShape1Backgroundimage,
        onboardingShape1BackgroundimageSvg,
        onboardingShape2Backgroundimage,
        onboardingShape2BackgroundimageSvg
      ];
}

class $AssetsImagesSplashGen {
  const $AssetsImagesSplashGen();

  /// File path: assets/images/splash/bottom_circles_onboard.svg
  SvgGenImage get bottomCirclesOnboard =>
      const SvgGenImage('assets/images/splash/bottom_circles_onboard.svg');

  /// File path: assets/images/splash/bottom_circles_onboard.svg.vec
  SvgGenImage get bottomCirclesOnboardSvg =>
      const SvgGenImage.vec('assets/images/splash/bottom_circles_onboard.svg.vec');

  /// File path: assets/images/splash/fruit_hub_splash.svg
  SvgGenImage get fruitHubSplash => const SvgGenImage('assets/images/splash/fruit_hub_splash.svg');

  /// File path: assets/images/splash/fruit_hub_splash.svg.vec
  SvgGenImage get fruitHubSplashSvg =>
      const SvgGenImage.vec('assets/images/splash/fruit_hub_splash.svg.vec');

  /// File path: assets/images/splash/plant_onboard.svg
  SvgGenImage get plantOnboard => const SvgGenImage('assets/images/splash/plant_onboard.svg');

  /// File path: assets/images/splash/plant_onboard.svg.vec
  SvgGenImage get plantOnboardSvg =>
      const SvgGenImage.vec('assets/images/splash/plant_onboard.svg.vec');

  /// List of all assets
  List<SvgGenImage> get values => [
        bottomCirclesOnboard,
        bottomCirclesOnboardSvg,
        fruitHubSplash,
        fruitHubSplashSvg,
        plantOnboard,
        plantOnboardSvg
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
