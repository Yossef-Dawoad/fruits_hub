import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentaion/components/bottom_nav_bar.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('RootScaffoldWithNestedNavigation'));

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            body: navigationShell,
            bottomNavigationBar: CustomBottomNavBar(
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: _goBranch,
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: Text('Bigger Screen is not Implemented Yet!'),
            ),
          );
        }
      },
    );
  }
}
