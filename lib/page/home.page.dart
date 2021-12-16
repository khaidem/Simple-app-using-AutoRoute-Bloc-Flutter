import 'package:flutter/material.dart';
import 'package:simple_app/page/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required}) : super(key: key);
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: const LoginPage(),
    );
  }
}
