import 'package:flutter/material.dart';

class StatistikMahasiswaPage extends StatefulWidget {
  const StatistikMahasiswaPage({ Key? key }) : super(key: key);

  @override
  State<StatistikMahasiswaPage> createState() => _StatistikMahasiswaPageState();
}

class _StatistikMahasiswaPageState extends State<StatistikMahasiswaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Mahasiswa'),
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
            Text("Statistik Mahasiswa", textAlign: TextAlign.center,),
            SizedBox(height: 12,),
            Card(
              child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.man),
              title: Center(child: Text('Jenis Kelamin')),
              subtitle: Center(child: Text('Jumlah mahasiswa berdasarkan jenis kelamin.')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: ListTile(
                        leading: Icon(Icons.man),
                        title: Text('Lelaki'),
                        subtitle: Text('7777'),
                      ),
                    ),
                  ),
                ),
                
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: ListTile(
                        leading: Icon(Icons.woman),
                        title: Text('Wanita'),
                        subtitle: Text('7676'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
