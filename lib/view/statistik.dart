import 'package:flutter/material.dart';
import 'statistik_alumni.dart';
import 'statistik_tendik.dart';
import 'statistik_mahasiswa.dart';
import 'statistik_dosen.dart';
import 'statistik_prodi.dart';
import 'statistik_universitas.dart';

class StatistikPage extends StatefulWidget {
  const StatistikPage({Key? key}) : super(key: key);

  @override
  State<StatistikPage> createState() => _StatistikPageState();
}

class _StatistikPageState extends State<StatistikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik'),
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
                          builder: (context) => StatistikMahasiswaPage()));
                },
                child: const Text('MAHASISWA')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatistikDosenPage()));
                },
                child: const Text('DOSEN')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatistikTendikPage()));
                },
                child: const Text('TENAGA KEPENDIDIKAN')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatistikAlumniPage()));
                },
                child: const Text('ALUMNI')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatistikProdiPage()));
                },
                child: const Text('PRODI')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatistikUniversitasPage()));
                },
                child: const Text('UNIVERSITAS')),
          ],
        ),
      ),
    );
  }
}
