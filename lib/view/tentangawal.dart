import 'package:flutter/material.dart';
import 'tentang.dart';

class TentangAwalPage extends StatefulWidget {
  const TentangAwalPage({Key? key}) : super(key: key);

  @override
  State<TentangAwalPage> createState() => _TentangPageState();
}

class _TentangPageState extends State<TentangAwalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TentangPage()));
                },
                child: const Text('UNIVERSITAS')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TentangPage()));
                },
                child: const Text('FAKULTAS')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TentangPage()));
                },
                child: const Text('DEPARTEMEN')),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TentangPage()));
                },
                child: const Text('PRODI')),
          ],
        ),
      ),
    );
  }
}
