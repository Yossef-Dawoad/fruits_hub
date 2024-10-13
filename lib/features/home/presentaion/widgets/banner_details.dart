import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/widgets/generic_button.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class FeaturedBannerDetails extends StatelessWidget {
  const FeaturedBannerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('عروض العيد',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
        SizedBox(height: 5),
        Text(
          'خصم 25%',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
        ),
        SizedBox(height: 20),
        GenericElevatedButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          height: 35,
          child: Text(
            'تسوق الان',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Palette.primary, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
