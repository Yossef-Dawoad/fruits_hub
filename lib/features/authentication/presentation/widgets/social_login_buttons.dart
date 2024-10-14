import 'dart:developer';
import 'dart:io' show Platform;

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
        (Platform.isIOS || Platform.isMacOS)
            ? GenericOutlineButton(
                width: double.infinity,
                height: 56,
                label: Text('تسجيل بواسطه ابل', style: Theme.of(context).textTheme.titleMedium),
                imagePath: Assets.images.icons.appleLogoSvg.path,
                onPressed: () {},
              )
            : GenericOutlineButton(
                width: double.infinity,
                height: 56,
                label: Text('تسجيل بواسطه جوجل', style: Theme.of(context).textTheme.titleMedium),
                imagePath: Assets.images.icons.googleLogoSvg.path,
                onPressed: () {
                  log('Google Signed Pressed');
                  context.read<LoginBloc>().add(LoginWithGoogleRequested());
                },
              ),
        const SizedBox(height: 16),
        GenericOutlineButton(
          width: double.infinity,
          height: 56,
          label: Text('تسجيل بواسطه فيسبوك', style: Theme.of(context).textTheme.titleMedium),
          imagePath: Assets.images.icons.facebookLogoSvg.path,
          onPressed: () {
            context.read<LoginBloc>().add(LoginWithFacebookRequested());
          },
        ),
      ],
    );
  }
}
