import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 240,
      decoration: BoxDecoration(color: Palette.softGrey, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 10,
            right: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 100,
                  child: Assets.images.onboarding.onboardingPineappleImageSvg.svg(),
                ),
                SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  title: Text(
                    'اناناس',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text.rich(
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Palette.secondary,
                          fontWeight: FontWeight.w700,
                        ),
                    TextSpan(text: ' 20 جنيه ', children: [
                      TextSpan(
                        text: '/ الكيلو ',
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.0),
                      )
                    ]),
                  ),
                  trailing: IconButton.filledTonal(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          )
        ],
      ),
    );
  }
}
