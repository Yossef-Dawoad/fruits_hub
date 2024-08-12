import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class DidYouForgetPassword extends StatelessWidget {
  const DidYouForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'هل نسيت كلمة المرور؟',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.primary),
          ),
        ),
      ],
    );
  }
}
