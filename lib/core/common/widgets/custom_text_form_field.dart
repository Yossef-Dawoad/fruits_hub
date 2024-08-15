import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
    this.onSaved,
    this.controller,
    this.isObscure = false,
  });
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool isObscure;
  final ValueListenableTransformer<String?>? validator;
  final ValueChanged<String?>? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator ?? _basicValidator,
      onSaved: onSaved,
      keyboardType: keyboardType,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }

  String? _basicValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'هذا الحقل مطلوب';
    }
    return null;
  }
}
