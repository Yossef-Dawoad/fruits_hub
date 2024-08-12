import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/services/local_storage/prefs_keys.dart';
import 'package:fruits_hub/core/common/services/local_storage/shared_prefs_helper.dart';
import 'package:fruits_hub/core/common/widgets/generic_button.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/dependency_injection/di.dart';
import 'package:fruits_hub/features/authentication/presentation/view/login_view.dart';
import 'package:fruits_hub/features/onboarding/models/page_content.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/onboarding_page.dart';
import 'indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;
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
            itemBuilder: (ctx, i) => OnBoardingPage(
              pageContent: onBoardingPages[i],
              pageIndex: _currentPageIndex,
            ),
          ),
        ),
        Indicator(
          controller: _pageController,
          count: onBoardingPages.length,
          dotHeight: 14,
        ),
        const SizedBox(height: 16),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: _isLastPage ? 1 : 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Constants.kBottomPadding),
            child: GenericElevatedButton(
              onPressed: () async {
                await sl<SharedPrefHelper>().setData(PrefsKeys.isOnBoardingSeen, true);
                if (context.mounted) {
                  Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                }
              },
              text: 'ابدأ الآن',
              width: double.infinity,
            ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }

  bool get _isLastPage => _currentPageIndex == onBoardingPages.length - 1;

  void _updatePageIndicator(int index) {
    setState(() => _currentPageIndex = index);
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
