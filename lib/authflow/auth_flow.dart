import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_app/logic/authflow/authflow_cubit.dart';
import 'package:simple_app/router/router.dart';

class AuthFlow extends StatelessWidget {
  const AuthFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthflowCubit>().state;
    return AutoRouter.declarative(
      routes: (context) {
        switch (state.status) {
          case Status.isLoggedIn:
            return [const HomeRoute()];
          case Status.isLoggedOut:
            return [const LoginRoute()];
        }
      },
    );
  }
}
