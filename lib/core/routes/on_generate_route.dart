import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    SplashView.routeName => MaterialPageRoute(builder: (_) => const SplashView()),
    OnboardingView.routeName => MaterialPageRoute(builder: (_) => const OnboardingView()),
    _ => MaterialPageRoute(builder: (_) => const Scaffold()),
  };
}
