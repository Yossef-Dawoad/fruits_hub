// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';

import 'onboarding_page_content.dart';

class ScrollablePageView extends StatelessWidget {
  const ScrollablePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnBoardingPageContent(
          title: const Text.rich(
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            TextSpan(
              text: 'مرحبًا بك في',
              children: [
                TextSpan(text: 'Fruit', style: TextStyle(color: Colors.black)),
                TextSpan(text: 'Hub', style: TextStyle(color: Colors.orange)),
              ],
            ),
          ),
          subTitle: const Text(
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            textAlign: TextAlign.center,
          ),
          image: Assets.images.onboarding.onboardingFruitBasketImage.path,
          bgImage: Assets.images.onboarding.onboardingShape1Backgroundimage.path,
        ),
        OnBoardingPageContent(
          title: const Text(
            'ابحث وتسوق',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          subTitle: const Text(
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            textAlign: TextAlign.center,
          ),
          image: Assets.images.onboarding.onboardingPineappleImage.path,
          bgImage: Assets.images.onboarding.onboardingShape2Backgroundimage.path,
        ),
      ],
    );
  }
}
