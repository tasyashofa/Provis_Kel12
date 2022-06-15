import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
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

final List<String> carouselImgs = [
  'assets/gedung_isola.jpeg',
  'assets/gedung_fpmipa.jpeg',
  'assets/gerbang_upi.jpeg',
];

class _BerandaPageState extends State<BerandaPage> {
  Map<String, double> dataMap = {
    "Mahasiswa": 8000,
    "Dosen": 500,
    "Tendik": 200,
    "Alumni": 10000,
  };

  List<Color> colorList = [
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StatefulBuilder(
                builder: (context, setState) => SizedBox(
                      height: 200,
                      child: PageView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.primaries[index],
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage(carouselImgs[index]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                      ),
                    )),
            SizedBox(height: 12),
            Card(
              child: Expanded(
                child: Column(
                  children: [
                    ListTile(
                      title: Center(child: Text('Rasio Warga UPI')),
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
            ),
            Card(
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text('Berita'),
                      ],
                    ))),
            Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                              child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        'assets/gedung_isola.jpeg',
                                        width: 180,
                                      ),
                                      Text(
                                          'Start to Learn and Master \nSoft Skills as a Student'),
                                    ],
                                  ))),
                          Card(
                              child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        'assets/gedung_isola.jpeg',
                                        width: 180,
                                      ),
                                      Text(
                                          'Is Blended Learning Effective\nat UPI?'),
                                    ],
                                  ))),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                              child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        'assets/gedung_isola.jpeg',
                                        width: 180,
                                      ),
                                      Text(
                                          'Chemistry Education Online \nEvents at UPI in 2021'),
                                    ],
                                  ))),
                          Card(
                              child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        'assets/gedung_isola.jpeg',
                                        width: 180,
                                      ),
                                      Text(
                                          'Students’ Thoughts on \nExtracurricular Activities'),
                                    ],
                                  ))),
                        ]),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
