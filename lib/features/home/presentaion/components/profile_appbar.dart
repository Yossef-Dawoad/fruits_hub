import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';

class ProfileHomeAppBar extends StatelessWidget {
  const ProfileHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Palette.primary,
        foregroundImage: Assets.images.profile.person.provider(),
      ),
      title: Text(
        'صباح الخير ..!',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
        'يوسف داود',
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.1),
      ),
      trailing: Badge(
        padding: EdgeInsets.zero,
        child: IconButton.filled(
          style: IconButton.styleFrom(backgroundColor: Palette.borderSecondary),
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Palette.primary,
          ),
        ),
      ),
    );
  }
}
