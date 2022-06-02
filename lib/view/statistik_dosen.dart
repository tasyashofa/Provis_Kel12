import 'package:flutter/material.dart';

class StatistikDosenPage extends StatefulWidget {
  const StatistikDosenPage({ Key? key }) : super(key: key);

  @override
  State<StatistikDosenPage> createState() => _StatistikDosenPageState();
}

class _StatistikDosenPageState extends State<StatistikDosenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Dosen'),
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
            Text("Statistik Dosen", textAlign: TextAlign.center,),
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
