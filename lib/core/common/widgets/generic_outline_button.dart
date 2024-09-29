import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class GenericOutlineButton extends StatelessWidget {
  const GenericOutlineButton({
    super.key,
    this.imagePath,
    required this.label,
    required this.onPressed,
    this.height,
    this.width,
  });

  final String? imagePath;
  final Widget label;
  final VoidCallback onPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: onPressed,
        icon: imagePath != null ? VectorGraphic(loader: AssetBytesLoader(imagePath!)) : null,
        label: Center(child: label),
        iconAlignment: IconAlignment.end,
      ),
    );
  }
}
