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
      home: const PenelitianPage(),
    );
  }
}

class PenelitianPage extends StatefulWidget {
  const PenelitianPage({Key? key}) : super(key: key);

  @override
  State<PenelitianPage> createState() => _PenelitianPageState();
}

class _PenelitianPageState extends State<PenelitianPage> {
  Map<String, double> dataMap = {
    "S1": 40,
    "S2": 25,
    "S3": 15,
    "S4": 15,
    "S5": 15,
    "S6": 15
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539),
    Color.fromARGB(255, 251, 255, 0),
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
              child: Padding(padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text("Jumlah Jurnal Terakdreditasi", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    PieChart(
                      dataMap: dataMap,
                      colorList: colorList,
                      chartRadius: MediaQuery.of(context).size.width / 2,
                      centerText: "Jurnal",
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
          
        )
        )
    );
  }
}
