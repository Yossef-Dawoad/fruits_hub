import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

class ProfileHomeAppBar extends StatelessWidget {
  const ProfileHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: VectorGraphic(
        loader: AssetBytesLoader(Assets.images.profile.person.path),
      ),
      title: Text(
        'صباح الخير ..!',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
        'يوسف داود',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      trailing: Badge(
        child: IconButton.filled(
          padding: EdgeInsets.all(12),
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ),
    );
  }
}
