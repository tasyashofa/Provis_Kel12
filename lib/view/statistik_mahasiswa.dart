import 'package:flutter/material.dart';

class StatistikMahasiswaPage extends StatefulWidget {
  const StatistikMahasiswaPage({Key? key}) : super(key: key);

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
            Text(
              "Statistik Mahasiswa",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Center(child: Text('Jenis Kelamin')),
                    subtitle: Center(
                        child: Text(
                            'Jumlah mahasiswa berdasarkan jenis kelamin.')),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          color: Color.fromARGB(255, 216, 237, 255),
                          child: Padding(
                            padding: EdgeInsets.all(5),
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
                          color: Color.fromARGB(255, 241, 214, 223),
                          child: Padding(
                            padding: EdgeInsets.all(5),
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
            SizedBox(
              height: 12,
            ),
            Card(
                child: SizedBox(
              height: 100,
            )),
          ],
        ),
      ),
    );
  }
}
