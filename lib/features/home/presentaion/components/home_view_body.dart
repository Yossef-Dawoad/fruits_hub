import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentaion/components/profile_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ProfileHomeAppBar()),
      ],
    );
  }
}
