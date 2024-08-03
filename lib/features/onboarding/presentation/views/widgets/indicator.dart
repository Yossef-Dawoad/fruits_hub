import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class Indicator extends StatelessWidget {
  final int count;
  final double dotHeight;
  final double dotWidth;
  final PageController controller;

  const Indicator({
    super.key,
    required this.controller,
    required this.count,
    required this.dotHeight,
    this.dotWidth = 20,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = controller.page?.round() ?? 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => InkWell(
          onTap: () {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 300),
            width: index == currentIndex ? dotWidth * 2 : dotWidth,
            height: dotHeight,
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dotWidth),
              color: index == currentIndex ? Palette.primary : Palette.primary.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }
}
