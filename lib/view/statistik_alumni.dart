import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;

class StatistikAlumniPage extends StatefulWidget {
  const StatistikAlumniPage({Key? key}) : super(key: key);

  @override
  State<StatistikAlumniPage> createState() => _StatistikAlumniPageState();
}

List<BarChartGroupData> barChartGroupData = [
  BarChartGroupData(x: 1, barRods: [
    BarChartRodData(y: 20, colors: [Colors.black]),
  ]),
  BarChartGroupData(x: 2, barRods: [
    BarChartRodData(y: 1000, colors: [Colors.red]),
  ]),
  BarChartGroupData(x: 3, barRods: [
    BarChartRodData(y: 2500, colors: [Colors.green]),
  ]),
  BarChartGroupData(x: 4, barRods: [
    BarChartRodData(y: 4000, colors: [Colors.blue]),
  ]),
  BarChartGroupData(x: 5, barRods: [
    BarChartRodData(y: 1500, colors: [Colors.yellow]),
  ]),
  BarChartGroupData(x: 6, barRods: [
    BarChartRodData(y: 3000, colors: [Colors.orange]),
  ]),
];

class _StatistikAlumniPageState extends State<StatistikAlumniPage> {
  Map<String, double> dataMap = {
    "Pemerintahan": 10000,
    "Swasta": 5000,
  };

  List<Color> colorList = [
    const Color(0xff3EE094),
    const Color(0xff3398F6),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistik Alumni'),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
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
                        child:
                            Text('Jumlah alumni berdasarkan jenis kelamin.')),
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
                              subtitle: Text('100000'),
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
                              subtitle: Text('150000'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(
                        child: Text(
                            'Jumlah Pekerjaan Alumni berdasarkan Jenis Perusahaan')),
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
                                  return 'Perseoranngan';
                                case 2:
                                  return 'CV';
                                case 3:
                                  return 'PT';
                                case 4:
                                  return 'Koperasi';
                                case 5:
                                  return 'Firma';
                                case 6:
                                  return 'Persero';
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
            SizedBox(
              height: 12,
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Center(
                        child: Text('Rasio Alumni Berdasarkan Pekerjaan')),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: MediaQuery.of(context).size.width,
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
    );
  }
}
