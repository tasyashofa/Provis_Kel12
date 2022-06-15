import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;
import 'statistik_penelitian.dart';
import 'statistik_pengabdian.dart';

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
];

class _StatistikDosenPageState extends State<StatistikDosenPage> {
  Map<String, double> dataMap = {
    "S1": 40,
    "S2": 25,
  };

  List<Color> colorList = [
    const Color(0xff3EE094),
    const Color(0xff3398F6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statistik Dosen'),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PengabdianPage()));
                          },
                          child: const Text('   Pengabdian   '),
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PenelitianPage()));
                          },
                          child: const Text('   Penelitian  '),
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                    ])),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Center(child: Text('Jenis Kelamin')),
                        subtitle: Center(
                            child: Text(
                                'Jumlah dosen berdasarkan jabatan funsgional')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Card(
                              color: Color.fromARGB(255, 216, 237, 255),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: ListTile(
                                  leading: Icon(Icons.man),
                                  title: Text('Lelaki'),
                                  subtitle: Text('7777'),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              color: Color.fromARGB(255, 241, 214, 223),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: ListTile(
                                  leading: Icon(Icons.woman),
                                  title: Text('Wanita'),
                                  subtitle: Text('7676'),
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
                  child: Expanded(
                    child: Column(
                      children: [
                        ListTile(
                          title: Center(
                              child: Text('Jumlah Dosen Berdasarkan Fakultas')),
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
                                        return 'Tenaga\nPengajar';
                                      case 2:
                                        return 'Asisten\nAhli';
                                      case 3:
                                        return 'Lektor';
                                      case 4:
                                        return 'Lektor\nKepala';
                                      case 5:
                                        return 'Guru\nBesar';
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
                ),
                SizedBox(
                  height: 12,
                ),
                Card(
                  child: Expanded(
                    child: Column(
                      children: [
                        ListTile(
                          title: Center(
                              child: Text(
                                  'Rasio Dosen Berdasarkan Jenjang Pendidikan Terakhir')),
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
                            chartValuesOptions:
                                const PieChart.ChartValuesOptions(
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
                ),
              ],
            ),
          ),
        ));
  }
}
