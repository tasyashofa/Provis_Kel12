import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: <Color>[Colors.red, Colors.black])),
      ),
    );
  }
}
