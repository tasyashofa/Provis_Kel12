import 'package:flutter/material.dart';

class SejarahVisiPage extends StatefulWidget {
  const SejarahVisiPage({ Key? key }) : super(key: key);

  @override
  State<SejarahVisiPage> createState() => _SejarahVisiPageState();
}

class _SejarahVisiPageState extends State<SejarahVisiPage> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text('Visi Misi dan Sejarah'),
                  ],
                )
              )
            ),
            Image.asset('assets/logo_upi.png',
              width: 120,
              height: 120,
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
