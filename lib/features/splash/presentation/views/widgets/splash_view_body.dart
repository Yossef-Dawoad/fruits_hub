import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //TODO: Test Locale effect on Alignment Proprety
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.images.splash.plantOnboard.path),
        ),
        SvgPicture.asset(Assets.images.splash.fruitHubSplash.path),
        SvgPicture.asset(Assets.images.splash.bottomCirclesOnboard.path, fit: BoxFit.fill),
      ],
    );
  }
}
