import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({ Key? key }) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                  ],
                )
              )
            ),
            SizedBox(height: 12,),
            Card(
              child: SizedBox(
                height: 100,
              )
            ),
            SizedBox(height: 12,),
            Card(
              child: SizedBox(
                height: 100,
              )
            ),
            SizedBox(height: 12,),
            Card(
              child: SizedBox(
                height: 100,
              )
            ),
            SizedBox(height: 12,),
            Card(
              child: SizedBox(
                height: 100,
              )
            ),
          ],
        ),
      ),
    );
  }
}