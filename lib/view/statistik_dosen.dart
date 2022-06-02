import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatistikDosenPage extends StatefulWidget {
  const StatistikDosenPage({Key? key}) : super(key: key);

  @override
  State<StatistikDosenPage> createState() => _StatistikDosenPageState();
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
  BarChartGroupData(x: 5, barRods: [
    BarChartRodData(y: 50, colors: [Colors.yellow]),
  ]),
  BarChartGroupData(x: 6, barRods: [
    BarChartRodData(y: 23, colors: [Colors.orange]),
  ]),
  BarChartGroupData(x: 7, barRods: [
    BarChartRodData(y: 60, colors: [Colors.pink]),
  ]),
];

class _StatistikDosenPageState extends State<StatistikDosenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Dosen'),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Statistik Jumlah Dosen Berdasarkan Fakultas",
              textAlign: TextAlign.center,
            ),
            Container(
                padding: EdgeInsets.all(30),
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
    );
  }
}
