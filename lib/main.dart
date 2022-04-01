import 'package:flutter/material.dart';

import 'view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF810000),
          secondary: Color(0xFFCE1212),
        ),
        scaffoldBackgroundColor: const Color(0xFFEEEBDD),
      ),
      home: const LoginPage(),
    );
  }
}