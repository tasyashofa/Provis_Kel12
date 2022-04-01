import 'package:flutter/material.dart';

import 'beranda.dart';
import 'tab_home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool onClickLogin = false;
  bool onClickSSO = false;

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo_upi.png',
              width: 120,
              height: 120,
            ),
            if (onClickLogin) Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username'
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TabTransitionPage()));
                  }, 
                  child: const Text('Submit')
                ),
              ]
            ),
            if (onClickSSO) Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'NIM'
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {}, 
                  child: const Text('Submit')
                ),
              ]
            ),
            if (!onClickLogin || !onClickSSO) Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      onClickLogin = true;
                      onClickSSO = false;
                    });
                  }, 
                  child: const Text('Login')
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      onClickLogin = false;
                      onClickSSO = true;
                    });
                  }, 
                  child: const Text('SSO')
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}