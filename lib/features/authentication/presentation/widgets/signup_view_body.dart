import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/common/widgets/custom_password_field.dart';
import 'package:fruits_hub/core/common/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/common/widgets/generic_button.dart';
import 'package:fruits_hub/core/common/widgets/progress_indecators.dart';
import 'package:go_router/go_router.dart';

import '../blocs/signup/signup_bloc.dart';
import 'doyou_have_acc.dart';
import 'terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _userNmaeController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _userNmaeController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  bool isTermsAccepted = false;

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
                controller: _userNmaeController,
                hintText: 'ادخل الاسم',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: _emailController,
                hintText: 'ادخل البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomPasswordField(
                passwordController: _passwordController,
                hintText: 'ادخل كلمة المرور',
              ),
              const SizedBox(height: 16),
              TermsAndConditions(
                onAccept: (value) => isTermsAccepted = value,
              ),
              const SizedBox(height: 16),
              GenericElevatedButton(
                width: double.infinity,
                onPressed: _onSignUpButtonPressed,
                child: BlocBuilder<SignupBloc, SignupState>(
                  builder: (context, state) {
                    return switch (state) {
                      SignupInitial() =>
                        const Text('انشاء حساب جديد', style: TextStyle(color: Colors.white)),
                      SignupLoading() => const BasicProgressIndicator(),
                      SignupSuccess() =>
                        const Text('تم التسجيل بنجاح', style: TextStyle(color: Colors.white)),
                      SignupFailure() =>
                        const Text('حدث خطأ ما', style: TextStyle(color: Colors.grey)),
                    };
                  },
                ),
              ),
              const SizedBox(height: 22),
              const DoYouHaveAcc(),
              BlocListener<SignupBloc, SignupState>(
                listenWhen: (prev, curr) => curr is SignupSuccess || curr is SignupFailure,
                listener: (context, state) => switch (state) {
                  SignupSuccess() => context.pop(),
                  SignupFailure(message: var msg) => _buildSnackBar(context, msg),
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

  void _onSignUpButtonPressed() {
    if (!isTermsAccepted) {
      _buildSnackBar(context, 'يجب عليك الموافقة على الشروط والأحكام');
    }
    if (_formKey.currentState!.validate() && isTermsAccepted) {
      _formKey.currentState!.save();
      context.read<SignupBloc>().add(
            SignupEmailWithPasswordEvent(
              _userNmaeController.text,
              _emailController.text,
              _passwordController.text,
            ),
          );
    }
  }
}
