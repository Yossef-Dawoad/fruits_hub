import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/features/onboarding/models/page_content.dart';
import 'package:vector_graphics/vector_graphics.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.pageContent,
  });

  final OnBoardingPageContent pageContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .5,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: [
              if (pageContent.backgroundImage != null)
                Positioned.fill(
                  child: SvgPicture(
                    AssetBytesLoader(pageContent.backgroundImage!),
                    fit: BoxFit.fill,
                  ),
                ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture(AssetBytesLoader(pageContent.image)),
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
        pageContent.title,
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: pageContent.subTitle ?? const SizedBox.shrink(),
        ),
      ],
    );
  }
}
