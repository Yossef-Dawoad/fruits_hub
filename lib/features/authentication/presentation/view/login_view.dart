import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/dependency_injection/di.dart';

import '../blocs/login/login_bloc.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routePath = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildLoginAppBar(context),
      body: BlocProvider(
        create: (context) => sl<LoginBloc>(),
        child: const LoginViewBody(),
      ),
    );
  }

  AppBar _buildLoginAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        'تسجيل الدخول',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
