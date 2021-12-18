import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_app/logic/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_app/router/router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample App'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Social App',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Log In', // context
                      //     .read<AuthCubit>()
                      //     .signUp(
                      //         emailController.text, passwordController.text)
                      //     .then((value) => LoginRoute);
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ), // context
                    //     .read<AuthCubit>()
                    //     .signUp(
                    //         emailController.text, passwordController.text)
                    //     .then((value) => LoginRoute);
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // _auth.signInWithEmailAndPassword(
                    //     email: email, password: password)
                    //forgot password screen
                  },
                  child: const Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        context.read<AuthCubit>().login(
                            emailController.text, passwordController.text);

                        // context.router.push(HomeRoute(
                        //     email: emailController.text,
                        //     password: passwordController.text));
                        // log(emailController.text);
                        // log(passwordController.text);
                        // _auth
                        //     .signInWithEmailAndPassword(
                        //         email: emailController.text,
                        //         password: passwordController.text)
                        //     .whenComplete(() => HomeRoute(
                        //         email: emailController.text,
                        //         password: passwordController.text));

                        // _auth.signInWithEmailAndPassword(
                        //     email: emailController.text,
                        //     password: passwordController.text).whenComplete(() => HomeRoute);

                        // _auth.createUserWithEmailAndPassword(
                        //     email: emailController.text,
                        //     password: passwordController.text);

                        //context.router.push(const HomeRoute());
                        // (nameController.text);
                        // (passwordController.text);
                      },
                    )),
                Row(
                  children: <Widget>[
                    const Text('Does not have account?'),
                    ElevatedButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        AutoRouter.of(context).push(const SignUp());

                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            )));
  }
}
