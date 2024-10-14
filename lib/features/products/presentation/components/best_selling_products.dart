import 'package:flutter/widgets.dart';

import '../widgets/product_item.dart';

class BestSellingProductsSliverGrid extends StatelessWidget {
  const BestSellingProductsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 8,
        childAspectRatio: 200 / 240,
      ),
      itemBuilder: (context, index) => ProductItem(),
    );
  }
}
