import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/common/widgets/custom_password_field.dart';
import 'package:fruits_hub/core/common/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/common/widgets/generic_button.dart';
import 'package:fruits_hub/core/common/widgets/progress_indecators.dart';
import 'package:fruits_hub/features/authentication/presentation/blocs/login/login_bloc.dart';

import 'doyou_forget_password.dart';
import 'doyou_have_acc.dart';
import 'or_divider_widget.dart';
import 'social_login_buttons.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                controller: _emailController,
                hintText: 'ادخل البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomPasswordField(
                hintText: 'ادخل كلمة المرور',
                passwordController: _passwordController,
              ),
              const SizedBox(height: 16),
              const DidYouForgetPassword(),
              const SizedBox(height: 16),
              GenericElevatedButton(
                width: double.infinity,
                onPressed: _onSignInButtonPressed,
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return switch (state) {
                      LoginInitial() =>
                        const Text('تسجيل الدخول', style: TextStyle(color: Colors.white)),
                      LoginLoading() => const BasicProgressIndicator(),
                      LoginSuccess() =>
                        const Text('تم التسجيل بنجاح', style: TextStyle(color: Colors.white)),
                      LoginFailure() =>
                        const Text('حدث خطأ ما', style: TextStyle(color: Colors.grey)),
                    };
                  },
                ),
              ),
              const SizedBox(height: 22),
              const DontYouHaveAcc(),
              const SizedBox(height: 22),
              const OrDividerWidget(),
              const SizedBox(height: 22),
              const SocialLoginButtons(),
              BlocListener<LoginBloc, LoginState>(
                listenWhen: (prev, curr) => curr is LoginSuccess || curr is LoginFailure,
                listener: (context, state) => switch (state) {
                  LoginSuccess() => Navigator.of(context).pop(),
                  LoginFailure(message: var msg) => _buildSnackBar(context, msg),
                  _ => const SizedBox.shrink()
                },
                child: const SizedBox.shrink(),
              )
            ],
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController _buildSnackBar(
    BuildContext context,
    String msg,
  ) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));

  void _onSignInButtonPressed() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read<LoginBloc>().add(
            LoginEmailWithPasswordRequested(
              email: _emailController.text,
              password: _passwordController.text,
            ),
          );
    }
  }
}
