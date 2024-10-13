import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';
import 'package:fruits_hub/features/home/presentaion/widgets/banner_curve_path.dart';
import 'package:vector_graphics/vector_graphics.dart';

class FeaturedBannerItem extends StatelessWidget {
  const FeaturedBannerItem({
    super.key,
    required this.imagePath,
    this.bannerDetails,
  });

  final String imagePath;
  final Widget? bannerDetails;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: VectorGraphic(
              fit: BoxFit.contain,
              loader: AssetBytesLoader(imagePath),
            ),
          ),
          ClipPath(
            clipper: BannerCurvePath(),
            child: Container(
              color: Palette.primary,
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: bannerDetails,
              ),
            ),
          )
        ],
      ),
    );
  }
}
