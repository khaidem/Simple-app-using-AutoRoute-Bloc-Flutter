import 'package:flutter/material.dart';

class FogetPage extends StatefulWidget {
  const FogetPage({Key? key}) : super(key: key);

  @override
  _FogetPageState createState() => _FogetPageState();
}

class _FogetPageState extends State<FogetPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Forget Password',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 40),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Email Id',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  //AutoRoute.of(context).push.
                },
                child: const Text('Submit'))
          ],
        ),
      )),
    );
  }
}
