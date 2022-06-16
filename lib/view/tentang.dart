import 'package:flutter/material.dart';
import 'tentang_sejarah_visi.dart';
import 'tentangstaff.dart';
import 'tentangpimpinan.dart';
import 'tentangfasilitas.dart';

class TentangPage extends StatefulWidget {
  const TentangPage({Key? key}) : super(key: key);

  @override
  State<TentangPage> createState() => _TentangPageState();
}

class _TentangPageState extends State<TentangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SejarahVisiPage()));
                },
                child: const Text('SEJARAH & VISI MISI')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TentangPimpinanPage()));
                },
                child: const Text('PIMPINAN')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TentangStaffPage()));
                },
                child: const Text('DEKAN FAKULTAS')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TentangFasilitasPage()));
                },
                child: const Text('FASILITAS')),
          ],
        ),
      ),
    );
  }
}
