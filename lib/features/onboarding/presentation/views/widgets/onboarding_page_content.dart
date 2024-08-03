import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPageContent extends StatelessWidget {
  const OnBoardingPageContent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.bgImage,
  });

  final String image, bgImage;
  final Widget title;
  final Widget? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.6,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(bgImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'تـخط',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 54),
        title,
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: subTitle ?? const SizedBox.shrink(),
        ),
      ],
    );
  }
}
