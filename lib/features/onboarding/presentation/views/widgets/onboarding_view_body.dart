import 'package:flutter/material.dart';

import 'scrollable_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: ScrollablePageView()),
      ],
    );
  }
}
