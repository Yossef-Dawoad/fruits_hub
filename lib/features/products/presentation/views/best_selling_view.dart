import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routePath = 'best-selling';
  static const routeName = 'best-selling';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الاكثر مبيعا',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        leading: IconButton.filledTonal(
          onPressed: context.pop,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
          ),
        ],
      ),
      body: BestSellingViewBody(),
    );
  }
}
