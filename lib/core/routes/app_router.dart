import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:fruits_hub/core/common/blocs/bloc/authenticated_user_bloc.dart';

import '../../features/authentication/presentation/view/login_view.dart';
import '../../features/authentication/presentation/view/signup_view.dart';
import '../../features/home/presentaion/views/home_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/products/presentation/views/best_selling_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../common/widgets/scaffold_with_nav_shell.dart';
import '../dependency_injection/di.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'HomeShell');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');
final _shellNavigatorDKey = GlobalKey<NavigatorState>(debugLabel: 'shellD');

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: SplashView.routePath,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: SplashView.routePath,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthenticatedUserBloc>(), //..add(CheckCurrentUserEvent()),
          child: const SplashView(),
        ),
      ),
      GoRoute(
        path: OnboardingView.routePath,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: LoginView.routePath,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: SignupView.routePath,
        builder: (context, state) => const SignupView(),
      ),

      // Stateful nested navigation based on:
      // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
      // to create a custom ScaffoldWithNestedNavigation widget

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => ScaffoldWithNestedNavigation(
          navigationShell: navigationShell,
        ),

        // each representing a separate stateful branch. in the route tree.
        branches: [
          // first branch (Home)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: HomeView.routePath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomeView(),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: BestSellingView.routePath,
                    name: BestSellingView.routeName,
                    builder: (context, state) => const BestSellingView(),
                  ),
                ],
              ),
            ],
          ),
          // second branch (B)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/b',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: RootScreen(label: 'B', detailsPath: '/b/details'),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => const DetailsScreen(label: 'B'),
                  ),
                ],
              ),
            ],
          ),
          // Third branch (c)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/c',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: RootScreen(label: 'C', detailsPath: '/c/details'),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => const DetailsScreen(label: 'C'),
                  ),
                ],
              ),
            ],
          ),
          // Forth branch (D)
          StatefulShellBranch(
            navigatorKey: _shellNavigatorDKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/d',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: RootScreen(label: 'D', detailsPath: '/d/details'),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => const DetailsScreen(label: 'D'),
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    ],
  );
}

// // Stateful nested navigation based on:
// // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart

/// Widget for the root/initial pages in the bottom navigation bar.
class RootScreen extends StatelessWidget {
  /// Creates a RootScreen
  const RootScreen({
    required this.label,
    required this.detailsPath,
    super.key,
  });

  /// The label
  final String label;

  /// The path to the detail page
  final String detailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tab root - $label'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Screen $label', style: Theme.of(context).textTheme.titleLarge),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () => context.go(detailsPath),
              child: const Text('View details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The details screen for either the A or B screen.
class DetailsScreen extends StatefulWidget {
  /// Constructs a [DetailsScreen].
  const DetailsScreen({required this.label, super.key});

  /// The label to display in the center of the screen.
  final String label;

  @override
  State<StatefulWidget> createState() => DetailsScreenState();
}

/// The state for DetailsScreen
class DetailsScreenState extends State<DetailsScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen - ${widget.label}')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Details for ${widget.label} - Counter: $_counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () {
                setState(() => _counter++);
              },
              child: const Text('Increment counter'),
            ),
          ],
        ),
      ),
    );
  }
}
