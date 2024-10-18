import 'package:flutter/material.dart';
import 'package:fruits_hub/features/authentication/presentation/view/login_view.dart';
import 'package:fruits_hub/features/onboarding/models/page_content.dart';
import 'package:go_router/go_router.dart';
import 'package:vector_graphics/vector_graphics.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.pageContent,
    required this.pageIndex,
  });

  final OnBoardingPageContent pageContent;
  final int pageIndex;

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
                  child: VectorGraphic(
                    loader: AssetBytesLoader(pageContent.backgroundImage!),
                    fit: BoxFit.fill,
                  ),
                ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: VectorGraphic(loader: AssetBytesLoader(pageContent.image)),
              ),
              Visibility(
                visible: pageIndex == 0,
                child: GestureDetector(
                  onTap: () => context.pushReplacementNamed(LoginView.routePath),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('تـخط', style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 54),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headlineMedium!,
          child: pageContent.title,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyLarge!,
            child: pageContent.subTitle ?? const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
