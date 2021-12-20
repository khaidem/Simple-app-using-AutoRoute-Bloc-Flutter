import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_app/logic/authflow/authflow_cubit.dart';
import 'package:simple_app/logic/cubit/auth_cubit.dart';

class MultiProvider extends StatelessWidget {
  const MultiProvider({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => AuthflowCubit(),
      ),
      BlocProvider(
        create: (context) => AuthCubit(),
      ),
    ], child: child);
  }
}
