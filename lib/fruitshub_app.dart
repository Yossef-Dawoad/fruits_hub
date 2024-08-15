import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/common/styles/themes.dart';
import 'core/routes/on_generate_route.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'generated/l10n.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: ThemeMode.system,
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      title: 'Fruits Hub',
      onGenerateRoute: generateRoute,
      initialRoute: SplashView.routeName,
      // builder: (context, child) {
      //   Widget error = const Text('...rendering error...');
      //   if (child is Scaffold || child is Navigator) {
      //     error = Scaffold(body: Center(child: error));
      //   }
      //   ErrorWidget.builder = (errorDetails) => error;
      //   if (child != null) return child;
      //   throw StateError('widget is null');
      // },
    );
  }
}
