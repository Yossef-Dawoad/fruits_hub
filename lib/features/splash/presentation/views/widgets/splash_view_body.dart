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
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.images.plantOnboard.path),
        ),
        SvgPicture.asset(Assets.images.fruitHubSplash.path),
        SvgPicture.asset(Assets.images.bottomCirclesOnboard.path, fit: BoxFit.fill),
      ],
    );
  }
}
