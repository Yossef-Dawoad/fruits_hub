import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';
import 'package:fruits_hub/features/authentication/presentation/view/signup_view.dart';
import 'package:go_router/go_router.dart';

class DontYouHaveAcc extends StatelessWidget {
  const DontYouHaveAcc({
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
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(SignupView.routePath);
              },
            text: ' سجل الان',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.primary),
          ),
        ],
      ),
    );
  }
}

class DoYouHaveAcc extends StatelessWidget {
  const DoYouHaveAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'لديك حساب باالفعل؟',
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = context.pop,
            text: ' تسجيل الدخول',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.primary),
          ),
        ],
      ),
    );
  }
}
