import 'package:flutter/material.dart';

import 'beranda.dart';
import 'statistik.dart';
import 'tentang.dart';
import 'kontak.dart';

class TabTransitionPage extends StatefulWidget {
  const TabTransitionPage({ Key? key }) : super(key: key);

  @override
  State<TabTransitionPage> createState() => _TabTransitionPageState();
}

class _TabTransitionPageState extends State<TabTransitionPage> {
  
  int currIndex = 0;

  List<Widget> pages = [
    const BerandaPage(),
    const StatistikPage(),
    const TentangPage(),
    const KontakPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: (index) => setState(() {
          currIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(currIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Beranda',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(currIndex == 1 ? Icons.equalizer : Icons.equalizer_outlined),
            label: 'Statistik',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(currIndex == 2 ? Icons.info : Icons.info_outline),
            label: 'Tentang',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(currIndex == 3 ? Icons.call : Icons.call_outlined),
            label: 'Kontak',
            backgroundColor: Colors.black,
          ),
        ]
      ),
    );
  }
}