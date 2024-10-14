import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class TitleHeaderRow extends StatelessWidget {
  const TitleHeaderRow({
    super.key,
    required this.title,
    this.subtitle,
    this.onPressed,
  });
  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        if (subtitle != null)
          TextButton(
            onPressed: onPressed ?? () {},
            child: Text(
              subtitle!,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Palette.primary),
            ),
          )
      ],
    );
  }
}
