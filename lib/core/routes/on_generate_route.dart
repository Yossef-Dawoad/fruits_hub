import 'package:flutter/material.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    SplashView.routeName => MaterialPageRoute(builder: (_) => const SplashView()),
    _ => MaterialPageRoute(builder: (_) => const SplashView()),
  };
}
