import 'package:flutter/widgets.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';
import 'package:fruits_hub/features/home/presentaion/widgets/banner_details.dart';
import 'package:fruits_hub/features/home/presentaion/widgets/featured_banner_item.dart';

class FeaturedBannersListVew extends StatelessWidget {
  const FeaturedBannersListVew({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          separatorBuilder: (context, index) =>
              index != 0 ? const SizedBox(width: 10) : SizedBox.shrink(),
          itemBuilder: (context, index) => FeaturedBannerItem(
            imagePath: Assets.images.splash.plantOnboardSvg.path,
            bannerDetails: FeaturedBannerDetails(),
          ),
        ),
      ),
    );
  }
}
