import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;
import 'statistik_penelitian.dart';

class StatistikMahasiswaPage extends StatefulWidget {
  const StatistikMahasiswaPage({Key? key}) : super(key: key);

  @override
  State<StatistikMahasiswaPage> createState() => _StatistikMahasiswaPageState();
}

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(x: 1, barRods: [
    BarChartRodData(y: 4500, colors: [Colors.black]),
  ]),
  BarChartGroupData(x: 2, barRods: [
    BarChartRodData(y: 4000, colors: [Colors.red]),
  ]),
  BarChartGroupData(x: 3, barRods: [
    BarChartRodData(y: 3200, colors: [Colors.green]),
  ]),
  BarChartGroupData(x: 4, barRods: [
    BarChartRodData(y: 4999, colors: [Colors.blue]),
  ]),
  BarChartGroupData(x: 5, barRods: [
    BarChartRodData(y: 4600, colors: [Colors.yellow]),
  ]),
  BarChartGroupData(x: 6, barRods: [
    BarChartRodData(y: 3500, colors: [Colors.orange]),
  ]),
  BarChartGroupData(x: 7, barRods: [
    BarChartRodData(y: 5000, colors: [Colors.pink]),
  ]),
];

class _StatistikMahasiswaPageState extends State<StatistikMahasiswaPage> {
  Map<String, double> dataMap = {
    "MBKM": 1000,
    "Reguler": 7000,
    "Cuti": 100,
    "Pertukaran Mahasiswa": 200,
  };

  List<Color> colorList = [
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFE9539),
    const Color(0xffFA4A42),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statistik Mahasiswa'),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Center(child: Text('Jenis Kelamin')),
                        subtitle: Center(
                            child: Text(
                                'Jumlah mahasiswa berdasarkan jenis kelamin.')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 216, 237, 255),
                              child: const ListTile(
                                leading: Icon(Icons.man),
                                title: Text('Lelaki'),
                                subtitle: Text('7777'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: const Color.fromARGB(255, 241, 214, 223),
                              child: const ListTile(
                                leading: Icon(Icons.woman),
                                title: Text('Wanita'),
                                subtitle: Text('7676'),
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
                            child:
                                Text('Jumlah mahasiswa Berdasarkan Fakultas')),
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
                                reservedSize: 40,
                                interval: 1000,
                                showTitles: true,
                                getTitles: (value) {
                                  if (value.toInt() == 0)
                                    return "";
                                  else
                                    return value.toInt().toString();
                                },
                              ),
                            ),
                            maxY: 5000,
                            borderData: FlBorderData(
                              show: false,
                            ),
                            barGroups: barChartGroupData,
                          )))
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
                        title: Center(child: Text('Rasio Mahasiswa ')),
                      ),
                      SizedBox(
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
              ],
            ),
          ),
        ));
  }
}
