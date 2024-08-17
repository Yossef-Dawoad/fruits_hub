import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/common/widgets/generic_outline_button.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';
import 'package:fruits_hub/features/authentication/presentation/blocs/login/login_bloc.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericOutlineButton(
          width: double.infinity,
          height: 56,
          label: 'تسجيل بواسطه جوجل',
          imagePath: Assets.images.logos.googleLogoSvg.path,
          onPressed: () {
            context.read<LoginBloc>().add(LoginWithGoogleRequested());
          },
        ),
        const SizedBox(height: 16),
        GenericOutlineButton(
          width: double.infinity,
          height: 56,
          label: 'تسجيل بواسطه فيسبوك',
          imagePath: Assets.images.logos.facebookLogoSvg.path,
          onPressed: () {
            context.read<LoginBloc>().add(LoginWithFacebookRequested());
          },
        ),
        const SizedBox(height: 16),
        GenericOutlineButton(
          width: double.infinity,
          height: 56,
          label: 'تسجيل بواسطه ابل',
          imagePath: Assets.images.logos.appleLogoSvg.path,
          onPressed: () {},
        ),
      ],
    );
  }
}
