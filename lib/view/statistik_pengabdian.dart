import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PengabdianPage(),
    );
  }
}

class PengabdianPage extends StatefulWidget {
  const PengabdianPage({Key? key}) : super(key: key);

  @override
  State<PengabdianPage> createState() => _PengabdianPageState();
}

class _PengabdianPageState extends State<PengabdianPage> {
  Map<String, double> dataMap = {
    "Pemda": 40,
    "Industri": 25,
    "Masyarakat": 15,
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Penelitian'),
          foregroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "Rasio Pengabdian berdasarkan kerja sama",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        PieChart(
                          dataMap: dataMap,
                          colorList: colorList,
                          chartRadius: MediaQuery.of(context).size.width / 2,
                          ringStrokeWidth: 32,
                          animationDuration: const Duration(seconds: 3),
                          chartValuesOptions: const ChartValuesOptions(
                              showChartValues: true,
                              showChartValuesOutside: true,
                              showChartValuesInPercentage: true,
                              showChartValueBackground: false),
                          legendOptions: const LegendOptions(
                              showLegends: true,
                              legendShape: BoxShape.rectangle,
                              legendTextStyle: TextStyle(fontSize: 15),
                              legendPosition: LegendPosition.right,
                              showLegendsInRow: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
