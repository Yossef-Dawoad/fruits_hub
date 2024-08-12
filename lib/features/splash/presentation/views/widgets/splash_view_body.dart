import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

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
          child: VectorGraphic(
            loader: AssetBytesLoader(Assets.images.splash.plantOnboardSvg.path),
          ),
        ),
        VectorGraphic(
          loader: AssetBytesLoader(Assets.images.splash.fruitHubSplashSvg.path),
        ),
        VectorGraphic(
          loader: AssetBytesLoader(Assets.images.splash.bottomCirclesOnboardSvg.path),
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
