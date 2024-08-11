import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';

class OnBoardingPageContent {
  final Widget title;
  final Widget? subTitle;
  final String image;
  final String? backgroundImage;

  const OnBoardingPageContent({
    required this.title,
    required this.image,
    this.subTitle,
    this.backgroundImage,
  });
}

List<OnBoardingPageContent> onBoardingPages = [
  OnBoardingPageContent(
    image: Assets.images.onboarding.onboardingFruitBasketImageSvg.path,
    backgroundImage: Assets.images.onboarding.onboardingShape1BackgroundimageSvg.path,
    title: const Text.rich(
      TextSpan(
        text: ' مرحبًا بك في',
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
    image: Assets.images.onboarding.onboardingPineappleImageSvg.path,
    backgroundImage: Assets.images.onboarding.onboardingShape2BackgroundimageSvg.path,
  ),
];
