import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/services/local_storage/prefs_keys.dart';
import 'package:fruits_hub/core/common/services/local_storage/shared_prefs_helper.dart';
import 'package:fruits_hub/core/dependency_injection/di.dart';
import 'package:fruits_hub/features/authentication/presentation/view/login_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';

import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToProperDestination();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }

  void navigateToProperDestination() {
    bool isOnboardingSeen = sl<SharedPrefHelper>().getData(PrefsKeys.isOnBoardingSeen) ?? false;
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!mounted) return null;
        if (isOnboardingSeen) return Navigator.pushReplacementNamed(context, LoginView.routeName);
        return Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      },
    );
  }
}
