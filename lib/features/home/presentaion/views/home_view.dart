import 'package:flutter/material.dart';

import '../components/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routePath = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
