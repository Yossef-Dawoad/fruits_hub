import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/widgets/generic_button.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/features/onboarding/models/page_content.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/onboarding_page.dart';
import 'indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * .8,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: _updatePageIndicator,
            itemCount: onBoardingPages.length,
            itemBuilder: (ctx, i) => OnBoardingPage(pageContent: onBoardingPages[i]),
          ),
        ),
        Indicator(
          controller: _pageController,
          count: onBoardingPages.length,
          dotHeight: 14,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Constants.kBottomPadding),
          child: GenericButton(
            onPressed: () {},
            text: 'ابدأ الآن',
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }

  void _updatePageIndicator(int index) {
    setState(() => _currentPageIndex = index);
  }
}
