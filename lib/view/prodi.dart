import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(x: 1, barRods: [
    BarChartRodData(y: 4000, colors: [Colors.black]),
  ]),
  BarChartGroupData(x: 2, barRods: [
    BarChartRodData(y: 500, colors: [Colors.red]),
  ]),
  BarChartGroupData(x: 3, barRods: [
    BarChartRodData(y: 500, colors: [Colors.green]),
  ]),
  BarChartGroupData(x: 4, barRods: [
    BarChartRodData(y: 10000, colors: [Colors.blue]),
  ]),
];

class Prodi extends StatelessWidget {
  String namaProdi;
  Prodi({Key? key, required this.namaProdi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Prodi'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  child: Text(
                "$namaProdi",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(
                        child: Text('Jumlah Warga Prodi berdasarkan status')),
                  ),
                  Container(
                      padding: EdgeInsets.all(30),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: BarChart(BarChartData(
                        titlesData: FlTitlesData(
                          topTitles: SideTitles(showTitles: false),
                          rightTitles: SideTitles(showTitles: false),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 1:
                                  return 'Mahasiswa';
                                case 2:
                                  return 'Dosen';
                                case 3:
                                  return 'Tendik';
                                case 4:
                                  return 'Alumni';
                              }
                              return "";
                            },
                          ),
                          leftTitles: SideTitles(
                            reservedSize: 40,
                            interval: 2000,
                            showTitles: true,
                            getTitles: (value) {
                              if (value.toInt() == 0)
                                return "";
                              else
                                return value.toInt().toString();
                            },
                          ),
                        ),
                        maxY: 10000,
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
