import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/dependency_injection/di.dart';
import 'package:fruits_hub/features/authentication/presentation/blocs/signup/signup_bloc.dart';
import 'package:go_router/go_router.dart';

import '../widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildSignupAppBar(context),
      body: BlocProvider(
        create: (context) => sl<SignupBloc>(),
        child: const SignupViewBody(),
      ),
    );
  }

  AppBar _buildSignupAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: context.pop,
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: Text(
        'حساب جديد',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
