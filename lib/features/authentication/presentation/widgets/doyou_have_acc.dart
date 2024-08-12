import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class DoYouHaveAcc extends StatelessWidget {
  const DoYouHaveAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'ليس لديك حساب؟',
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: ' سجل الان',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.primary),
          ),
        ],
      ),
    );
  }
}
