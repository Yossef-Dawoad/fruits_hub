import 'package:flutter/material.dart';

import 'core/routes/on_generate_route.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsHubApp());
}

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fruits Hub',
      onGenerateRoute: generateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
