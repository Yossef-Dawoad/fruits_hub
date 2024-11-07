import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/widgets/title_header_row.dart';
import 'package:fruits_hub/features/products/presentation/components/best_selling_products.dart';
import 'package:fruits_hub/features/home/presentaion/components/featured_banners_list_vew.dart';
import 'package:fruits_hub/features/home/presentaion/components/profile_appbar.dart';
import 'package:fruits_hub/features/home/presentaion/components/search_bar.dart';
import 'package:fruits_hub/features/products/presentation/views/best_selling_view.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                ProfileHomeAppBar(),
                SizedBox(height: 10),
                MainSearchBar(),
                SizedBox(height: 10),
                FeaturedBannersListVew(), //TODO: implement PageView Instead
                SizedBox(height: 10),
              ],
            ),
          ),
          SliverToBoxAdapter(child: BestSellingHeader()),
          BestSellingProductsSliverGrid(),
        ],
      ),
    );
  }
}

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleHeaderRow(
      title: 'الاكثر مبيعا',
      subtitle: 'عرض الكل',
      // onPressed: () => context.push('${HomeView.routePath}/${BestSellingView.routePath}'),
      onPressed: () => context.pushNamed(BestSellingView.routeName),
    );
  }
}
