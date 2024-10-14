import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';
import 'package:fruits_hub/core/constants/images/assets.gen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) => setState(() => currentPageIndex = index),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        indicatorColor: Palette.primary,
        destinations: <Widget>[
          NavigationDestination(
            icon: Assets.images.icons.outlined.homeSvg.svg(),
            selectedIcon: Assets.images.icons.bold.homeSvg.svg(),
            label: 'الرئيسية',
            tooltip: 'الرئيسية',
          ),
          NavigationDestination(
            icon: Assets.images.icons.outlined.productsSvg.svg(),
            selectedIcon: Assets.images.icons.bold.productsSvg.svg(),
            label: 'المنتجات',
            tooltip: 'المنتجات',
          ),
          NavigationDestination(
            icon: Badge(
              offset: const Offset(10, -12),
              label: Text('2'),
              isLabelVisible: true,
              child: Assets.images.icons.outlined.shoppingCartSvg.svg(),
            ),
            selectedIcon: Assets.images.icons.bold.shoppingCartSvg.svg(),
            label: 'سلة المشتريات',
            tooltip: 'سلة المشتريات',
          ),
          NavigationDestination(
            icon: Assets.images.icons.outlined.userSvg.svg(),
            selectedIcon: Assets.images.icons.bold.userSvg.svg(),
            label: 'حسابي',
            tooltip: 'حسابي',
          ),
        ],
      ),
    );
  }
}
