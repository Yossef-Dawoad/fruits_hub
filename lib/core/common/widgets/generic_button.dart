import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
  });

  final String text;
  final double? height;
  final double? width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Palette.primary,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
