import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import '../components/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeViewBody()),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
