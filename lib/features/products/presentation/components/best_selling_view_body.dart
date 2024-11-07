import 'package:flutter/material.dart';

import 'best_selling_products.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        BestSellingProductsSliverGrid(),
      ],
    );
  }
}
