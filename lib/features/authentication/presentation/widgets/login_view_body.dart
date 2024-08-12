import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/common/widgets/generic_button.dart';

import 'doyou_forget_password.dart';
import 'doyou_have_acc.dart';
import 'or_divider_widget.dart';
import 'social_login_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'ادخل البريد الالكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'ادخل كلمة المرور',
              suffixIcon: Icon(Icons.remove_red_eye),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16),
            const DidYouForgetPassword(),
            const SizedBox(height: 16),
            GenericElevatedButton(
              text: 'تسجيل الدخول',
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 22),
            const DoYouHaveAcc(),
            const SizedBox(height: 22),
            const OrDividerWidget(),
            const SizedBox(height: 22),
            const SocialLoginButtons(),
          ],
        ),
      ),
    );
  }
}
