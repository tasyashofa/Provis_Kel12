import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatistikProdiPage extends StatefulWidget {
  const StatistikProdiPage({Key? key}) : super(key: key);

  @override
  State<StatistikProdiPage> createState() => _StatistikProdiPageState();
}

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(x: 1, barRods: [
    BarChartRodData(y: 20, colors: [Colors.black]),
  ]),
  BarChartGroupData(x: 2, barRods: [
    BarChartRodData(y: 30, colors: [Colors.red]),
  ]),
  BarChartGroupData(x: 3, barRods: [
    BarChartRodData(y: 25, colors: [Colors.green]),
  ]),
  BarChartGroupData(x: 4, barRods: [
    BarChartRodData(y: 40, colors: [Colors.blue]),
  ]),
];

class _StatistikProdiPageState extends State<StatistikProdiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statistik Prodi'),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/logo_upi.png',
                                  width: 100,
                                ),
                                const Text('Matematika'),
                              ],
                            ))),
                    Card(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/logo_upi.png',
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                const Text('Fisika'),
                              ],
                            ))),
                    Card(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/logo_upi.png',
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                const Text('IPSE'),
                              ],
                            ))),
                      Card(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/logo_upi.png',
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                const Text('Kimia'),
                              ],
                            ))),
                    Card(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/logo_upi.png',
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                const Text('Biologi'),
                              ],
                            ))),
                    Card(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/logo_upi.png',
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
                                const Text('Ilkom'),
                              ],
                            ))),
                    ]))));
  }
}
