import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class GenericElevatedButton extends StatelessWidget {
  const GenericElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.height = 56,
    this.width,
  });

  final Widget? child;
  final double? height;
  final double? width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Palette.primary,
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
