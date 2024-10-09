import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentaion/components/profile_appbar.dart';
import 'package:fruits_hub/features/home/presentaion/components/search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                ProfileHomeAppBar(),
                SizedBox(height: 10),
                MainSearchBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
