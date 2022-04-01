import 'package:flutter/material.dart';

class StatistikPage extends StatefulWidget {
  const StatistikPage({ Key? key }) : super(key: key);

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
              onPressed: () {}, 
              child: const Text('MAHASISWA')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('DOSEN')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('TENAGA KEPENDIDIKAN')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('ALUMNI')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('PRODI')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('UNIVERSITAS')
            ),
          ],
        ),
      ),
    );
  }
}