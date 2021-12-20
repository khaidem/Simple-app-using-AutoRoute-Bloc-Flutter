import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_app/logic/authflow/authflow_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Log out'),
          onPressed: () {
            context.read<AuthflowCubit>().signOut();
          },
        ),
      ),
    );
  }
}
