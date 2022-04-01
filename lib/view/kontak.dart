import 'package:flutter/material.dart';

class KontakPage extends StatefulWidget {
  const KontakPage({ Key? key }) : super(key: key);

  @override
  State<KontakPage> createState() => _KontakPageState();
}

class _KontakPageState extends State<KontakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
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
                    Text('Alamat'),
                    SizedBox(height: 12,),
                    Text('Universitas Pendidikan Indonesia\nJl. Dr. Setiabudhi No. 229'),
                  ],
                )
              )
            ),
            SizedBox(height: 12,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text('Kontak'),
                    SizedBox(height: 12,),
                    Text('Telp 022-2013163'),
                    Text('Fax. 022-2013651'),
                  ],
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}