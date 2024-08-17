import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.hintText,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;
  final String hintText;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obsecurePasword = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: widget._passwordController,
      hintText: widget.hintText,
      suffixIcon: IconButton(
        onPressed: () => setState(() => obsecurePasword = !obsecurePasword),
        icon: obsecurePasword ? const Icon(Icons.remove_red_eye) : const Icon(Icons.visibility_off),
      ),
      keyboardType: TextInputType.visiblePassword,
      isObscure: obsecurePasword,
    );
  }
}
