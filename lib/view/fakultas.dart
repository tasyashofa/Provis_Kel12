import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(x: 1, barRods: [
    BarChartRodData(y: 80, colors: [Colors.black]),
  ]),
  BarChartGroupData(x: 2, barRods: [
    BarChartRodData(y: 20, colors: [Colors.red]),
  ]),
  BarChartGroupData(x: 3, barRods: [
    BarChartRodData(y: 10, colors: [Colors.green]),
  ]),
  BarChartGroupData(x: 4, barRods: [
    BarChartRodData(y: 600, colors: [Colors.blue]),
  ]),
];

class Fakultas extends StatelessWidget {
  String namaFakultas;
  Fakultas({Key? key, required this.namaFakultas}) : super(key: key);

  Map<String, double> dataMap = {
    "Ruang Kelas": 20,
    "Ruang Dosen": 5,
    "Laboratorium": 6,
  };

  Map<String, double> dataPrestasi = {
    "Lomba": 30,
    "Organisasi": 20,
    "KTI": 10,
  };

  List<Color> colorList = [
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Fakultas'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  child: Text(
                "$namaFakultas",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(
                        child: Text('Jumlah Warga Fakultas berdasarkan status')),
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
                            interval: 200,
                            showTitles: true,
                            getTitles: (value) {
                              if (value.toInt() == 0)
                                return "";
                              else
                                return value.toInt().toString();
                            },
                          ),
                        ),
                        maxY: 1000,
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: barChartGroupData,
                      )))
                ],
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(child: Text('Rasio Fasilitas Fakultas')),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    height: 250,
                    child: PieChart.PieChart(
                      dataMap: dataMap,
                      colorList: colorList,
                      chartRadius: MediaQuery.of(context).size.width / 2,
                      ringStrokeWidth: 32,
                      animationDuration: const Duration(seconds: 3),
                      chartValuesOptions: const PieChart.ChartValuesOptions(
                          showChartValues: true,
                          showChartValuesOutside: true,
                          showChartValuesInPercentage: true,
                          showChartValueBackground: false),
                      legendOptions: const PieChart.LegendOptions(
                          showLegends: true,
                          legendShape: BoxShape.rectangle,
                          legendTextStyle: TextStyle(fontSize: 15),
                          legendPosition: PieChart.LegendPosition.right,
                          showLegendsInRow: false),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(child: Text('Rasio Prestasi Mahasiswa')),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    height: 250,
                    child: PieChart.PieChart(
                      dataMap: dataPrestasi,
                      colorList: colorList,
                      chartRadius: MediaQuery.of(context).size.width / 2,
                      ringStrokeWidth: 32,
                      animationDuration: const Duration(seconds: 3),
                      chartValuesOptions: const PieChart.ChartValuesOptions(
                          showChartValues: true,
                          showChartValuesOutside: true,
                          showChartValuesInPercentage: true,
                          showChartValueBackground: false),
                      legendOptions: const PieChart.LegendOptions(
                          showLegends: true,
                          legendShape: BoxShape.rectangle,
                          legendTextStyle: TextStyle(fontSize: 15),
                          legendPosition: PieChart.LegendPosition.right,
                          showLegendsInRow: false),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
