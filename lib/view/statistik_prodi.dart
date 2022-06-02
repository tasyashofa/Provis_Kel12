import 'package:flutter/material.dart';

class StatistikProdiPage extends StatefulWidget {
  const StatistikProdiPage({ Key? key }) : super(key: key);

  @override
  State<StatistikProdiPage> createState() => _StatistikProdiPageState();
}

class _StatistikProdiPageState extends State<StatistikProdiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Prodi'),
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
            Text("Statistik Prodi", textAlign: TextAlign.center,),
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
