import 'package:flutter/material.dart';

import 'beranda.dart';
import 'tab_home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/logo_upi.png',
              width: 120,
              height: 120,
            ),
            Spacer(),
            TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                const SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TabTransitionPage()));
                    },
                    child: const Text('Login')),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
