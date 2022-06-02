import 'package:flutter/material.dart';

class StatistikUniversitasPage extends StatefulWidget {
  const StatistikUniversitasPage({ Key? key }) : super(key: key);

  @override
  State<StatistikUniversitasPage> createState() => _StatistikUniversitasPageState();
}

class _StatistikUniversitasPageState extends State<StatistikUniversitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Universitas'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/logo_upi.png',
              width: 120,
              height: 120,
            ),
            Text("Statistik Universitas", textAlign: TextAlign.center,),
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
