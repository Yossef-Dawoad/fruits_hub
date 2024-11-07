import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/common/blocs/bloc/authenticated_user_bloc.dart';
import 'package:fruits_hub/core/common/services/local_storage/prefs_keys.dart';
import 'package:fruits_hub/core/common/services/local_storage/shared_prefs_helper.dart';
import 'package:fruits_hub/core/dependency_injection/di.dart';
import 'package:fruits_hub/features/authentication/presentation/view/login_view.dart';
import 'package:fruits_hub/features/home/presentaion/views/home_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routePath = '/splash';

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
    return BlocListener<AuthenticatedUserBloc, AuthenticatedUserState>(
      listener: (context, state) => switch (state) {
        AuthenticatedUserInitial() => Center(child: CircularProgressIndicator()),
        AuthenticatedUserIsTrue(user: final _) => context.go(HomeView.routePath),
        AuthenticatedUserIsFalse() || AuthenticatedUserFailure() => context.go(LoginView.routePath),
      },
      child: const Scaffold(
        body: SafeArea(child: SplashViewBody()),
      ),
    );
  }

  void navigateToProperDestination() {
    bool isOnboardingSeen = sl<SharedPrefHelper>().getData(PrefsKeys.isOnBoardingSeen) ?? false;
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!mounted) return;
        if (isOnboardingSeen) {
          context.read<AuthenticatedUserBloc>().add(CheckCurrentUserEvent());
          return;
        }
        return context.pushReplacement(OnboardingView.routePath);
      },
    );
  }
}
