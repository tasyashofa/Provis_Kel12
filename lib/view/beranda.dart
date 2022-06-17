import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;
import 'package:carousel_slider/carousel_slider.dart';
import 'berita.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

final List<String> carouselImgs = [
  'assets/gedung_isola.jpeg',
  'assets/gedung_fpmipa.jpeg',
  'assets/gerbang_upi.jpeg',
];

class _BerandaPageState extends State<BerandaPage> {
  static final List<String> imgSlider = [
    'gedung_isola.jpeg',
    'gedung_fpmipa.jpeg',
    'gerbang_upi.jpeg',
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'assets/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 150,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

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
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            autoPlayImage,
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Center(
                        child: Text('Rasio Warga UPI berdasarkan status')),
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
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Berita',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 16,
              children: [
                Card(
                    child: InkWell(
                  onTap: () {
                    //gunakan navigator untuk panggil Prodi
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Berita(
                                  namaBerita:
                                      'Start to Learn and Master Soft Skills as a Student',
                                )));
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Ink.image(
                            height: 200,
                            fit: BoxFit.cover,
                            image: const AssetImage(
                              'assets/gedung_isola.jpeg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(children: [
                              Icon(Icons.calendar_month),
                              Text('Minggu, 10 Juni 2022')
                            ]),
                          ),
                          const Text(
                              'Start to Learn and Master Soft Skills as a Student'),
                        ],
                      )),
                )),
                Card(
                    child: InkWell(
                  onTap: () {
                    //gunakan navigator untuk panggil Prodi
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Berita(
                                  namaBerita:
                                      'Is Blended Learning Effective at UPI?',
                                )));
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Ink.image(
                            height: 200,
                            fit: BoxFit.cover,
                            image: const AssetImage(
                              'assets/gedung_isola.jpeg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(children: [
                              Icon(Icons.calendar_month),
                              Text('Minggu, 10 Juni 2022')
                            ]),
                          ),
                          const Text('Is Blended Learning Effective at UPI?'),
                        ],
                      )),
                )),
                Card(
                    child: InkWell(
                  onTap: () {
                    //gunakan navigator untuk panggil Prodi
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Berita(
                                  namaBerita:
                                      'Chemistry Education Online Events at UPI in 2021',
                                )));
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Ink.image(
                            height: 200,
                            fit: BoxFit.cover,
                            image: const AssetImage(
                              'assets/gedung_isola.jpeg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(children: [
                              Icon(Icons.calendar_month),
                              Text('Minggu, 10 Juni 2022')
                            ]),
                          ),
                          const Text(
                              'Chemistry Education Online Events at UPI in 2021'),
                        ],
                      )),
                )),
                Card(
                    child: InkWell(
                  onTap: () {
                    //gunakan navigator untuk panggil Prodi
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Berita(
                                  namaBerita:
                                      'Students’ Thoughts on Extracurricular Activities',
                                )));
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Ink.image(
                            height: 200,
                            fit: BoxFit.cover,
                            image: const AssetImage(
                              'assets/gedung_isola.jpeg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(children: [
                              Icon(Icons.calendar_month),
                              Text('Minggu, 10 Juni 2022')
                            ]),
                          ),
                          const Text(
                              'Students’ Thoughts on Extracurricular Activities'),
                        ],
                      )),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
