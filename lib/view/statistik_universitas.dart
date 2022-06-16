import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatistikUniversitasPage extends StatefulWidget {
  const StatistikUniversitasPage({Key? key}) : super(key: key);

  @override
  State<StatistikUniversitasPage> createState() =>
      _StatistikUniversitasPageState();
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

class _StatistikUniversitasPageState extends State<StatistikUniversitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Universitas'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 12,
            ),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(child: Text('Jumlah Mahasiswa')),
                  ),
                  Container(
                      padding: const EdgeInsets.all(30),
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: BarChart(BarChartData(
                        titlesData: FlTitlesData(
                          topTitles: SideTitles(showTitles: false),
                          rightTitles: SideTitles(showTitles: false),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 1:
                                  return 'Beasiswa';
                                case 2:
                                  return 'Prestasi';
                                case 3:
                                  return 'MBKM';
                                case 4:
                                  return 'Pertukaran\nMahasiswa';
                              }
                              return "";
                            },
                          ),
                          leftTitles: SideTitles(
                            interval: 20,
                            showTitles: true,
                            getTitles: (value) {
                              if (value.toInt() == 0)
                                return "";
                              else
                                return value.toInt().toString();
                            },
                          ),
                        ),
                        maxY: 100,
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: barChartGroupData,
                      )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
