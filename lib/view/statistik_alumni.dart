import 'package:flutter/material.dart';

class StatistikAlumniPage extends StatefulWidget {
  const StatistikAlumniPage({ Key? key }) : super(key: key);

  @override
  State<StatistikAlumniPage> createState() => _StatistikAlumniPageState();
}

class _StatistikAlumniPageState extends State<StatistikAlumniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Alumni'),
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
            Text("Statistik Alumni", textAlign: TextAlign.center,),
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
