import 'package:flutter/material.dart';

class TentangPage extends StatefulWidget {
  const TentangPage({ Key? key }) : super(key: key);

  @override
  State<TentangPage> createState() => _TentangPageState();
}

class _TentangPageState extends State<TentangPage> {
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
              onPressed: () {}, 
              child: const Text('SEJARAH & VISI MISI')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('PENGHARGAAN')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('STAFF')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('MANAJEMEN')
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('FASILITAS')
            ),
          ],
        ),
      ),
    );
  }
}