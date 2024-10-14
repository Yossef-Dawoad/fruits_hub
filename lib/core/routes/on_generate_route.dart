import 'package:flutter/material.dart';
import 'package:fruits_hub/features/authentication/presentation/view/login_view.dart';
import 'package:fruits_hub/features/authentication/presentation/view/signup_view.dart';
import 'package:fruits_hub/features/home/presentaion/views/home_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/features/products/presentation/views/best_selling_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    SplashView.routeName => MaterialPageRoute(builder: (_) => const SplashView()),
    OnboardingView.routeName => MaterialPageRoute(builder: (_) => const OnboardingView()),
    LoginView.routeName => MaterialPageRoute(builder: (_) => const LoginView()),
    SignupView.routeName => MaterialPageRoute(builder: (_) => const SignupView()),
    HomeView.routeName => MaterialPageRoute(builder: (_) => const HomeView()),
    BestSellingView.routeName => MaterialPageRoute(builder: (_) => const BestSellingView()),
    _ => MaterialPageRoute(builder: (_) => const Scaffold()),
  };
}
