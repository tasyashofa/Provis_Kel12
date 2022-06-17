import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart' as PieChart;
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
                          const SizedBox(height: 12),
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
                          const SizedBox(height: 12),
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
                          const SizedBox(height: 12),
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
                          const SizedBox(height: 12),
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
