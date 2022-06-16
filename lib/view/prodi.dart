import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Prodi extends StatelessWidget {
  String namaProdi;
  Prodi({Key? key, required this.namaProdi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Fakultas'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: Text(
              "$namaProdi",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }
}
