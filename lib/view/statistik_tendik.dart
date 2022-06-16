import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatistikTendikPage extends StatefulWidget {
  const StatistikTendikPage({Key? key}) : super(key: key);

  @override
  State<StatistikTendikPage> createState() => _StatistikTendikPageState();
}

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(x: 1, barRods: [
    BarChartRodData(y: 240, colors: [Colors.black]),
  ]),
  BarChartGroupData(x: 2, barRods: [
    BarChartRodData(y: 200, colors: [Colors.red]),
  ]),
  BarChartGroupData(x: 3, barRods: [
    BarChartRodData(y: 300, colors: [Colors.green]),
  ]),
  BarChartGroupData(x: 4, barRods: [
    BarChartRodData(y: 250, colors: [Colors.blue]),
  ]),
  BarChartGroupData(x: 5, barRods: [
    BarChartRodData(y: 260, colors: [Colors.yellow]),
  ]),
  BarChartGroupData(x: 6, barRods: [
    BarChartRodData(y: 230, colors: [Colors.orange]),
  ]),
  BarChartGroupData(x: 7, barRods: [
    BarChartRodData(y: 260, colors: [Colors.pink]),
  ]),
];

class _StatistikTendikPageState extends State<StatistikTendikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Tendik'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Center(child: Text('Jenis Kelamin')),
                    subtitle: Center(
                        child: Text(
                            'Jumlah Tenaga Kependidikan berdasarkan jenis kelamin.')),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: const Color.fromARGB(255, 216, 237, 255),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: ListTile(
                              leading: Icon(Icons.man),
                              title: Text('Lelaki'),
                              subtitle: Text('920'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: const Color.fromARGB(255, 241, 214, 223),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: ListTile(
                              leading: Icon(Icons.woman),
                              title: Text('Wanita'),
                              subtitle: Text('1000'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(
                        child: Text(
                            'Jumlah Tenaga Kependidikan Berdasarkan Fakultas')),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
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
                                  return 'FPMIPA';
                                case 2:
                                  return 'FIP';
                                case 3:
                                  return 'FPIPS';
                                case 4:
                                  return 'FPSD';
                                case 5:
                                  return 'FPEB';
                                case 6:
                                  return 'FPBS';
                                case 7:
                                  return 'FPOK';
                              }
                              return "";
                            },
                          ),
                          leftTitles: SideTitles(
                            reservedSize: 30,
                            interval: 50,
                            showTitles: true,
                            getTitles: (value) {
                              if (value.toInt() == 0)
                                return "";
                              else
                                return value.toInt().toString();
                            },
                          ),
                        ),
                        maxY: 300,
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
