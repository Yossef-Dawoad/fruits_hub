import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class MainSearchBar extends StatelessWidget {
  const MainSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0x11000000),
          blurRadius: 4,
          spreadRadius: 0,
        )
      ]),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'ابحث عن المنتجات....',
          prefixIcon: Icon(
            Icons.search,
            color: Palette.primary,
          ),
          suffixIcon: Icon(Icons.format_list_numbered_rtl_outlined),
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          border: _bulidBorder(),
          enabledBorder: _bulidBorder(),
          focusedBorder: _bulidBorder(borderColor: Palette.primary),
        ),
      ),
    );
  }

  OutlineInputBorder _bulidBorder({Color borderColor = const Color(0xffE6E9E9)}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1, color: borderColor),
      );
}
