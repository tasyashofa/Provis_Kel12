import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'fakultas.dart';

class StatistikFakultasPage extends StatefulWidget {
  const StatistikFakultasPage({Key? key}) : super(key: key);

  @override
  State<StatistikFakultasPage> createState() => _StatistikFakultasPageState();
}

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

class _StatistikFakultasPageState extends State<StatistikFakultasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statistik Fakultas'),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Fakultas Ilmu Pendidikan')),
                              ),
                              Container(
                                  padding: EdgeInsets.all(30),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: BarChart(BarChartData(
                                    titlesData: FlTitlesData(
                                      topTitles: SideTitles(showTitles: false),
                                      rightTitles:
                                          SideTitles(showTitles: false),
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
                                    maxY: 800,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    barGroups: barChartGroupData,
                                  )))
                            ],
                          ),
                        ),
                        onTap: () {
                          //gunakan navigator untuk panggil Prodi
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fakultas(
                                        namaFakultas: 'Fakultas Ilmu Pendidikan',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Fakultas Pendidikan Ilmu Pengetahuan Sosial')),
                              ),
                              Container(
                                  padding: EdgeInsets.all(30),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: BarChart(BarChartData(
                                    titlesData: FlTitlesData(
                                      topTitles: SideTitles(showTitles: false),
                                      rightTitles:
                                          SideTitles(showTitles: false),
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
                                    maxY: 800,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    barGroups: barChartGroupData,
                                  )))
                            ],
                          ),
                        ),
                        onTap: () {
                          //gunakan navigator untuk panggil Prodi
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fakultas(
                                        namaFakultas: 'Fakultas Pendidikan Ilmu Pengetahuan Sosial',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Fakultas Pendidikan Bahasa dan Sastra')),
                              ),
                              Container(
                                  padding: EdgeInsets.all(30),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: BarChart(BarChartData(
                                    titlesData: FlTitlesData(
                                      topTitles: SideTitles(showTitles: false),
                                      rightTitles:
                                          SideTitles(showTitles: false),
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
                                    maxY: 800,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    barGroups: barChartGroupData,
                                  )))
                            ],
                          ),
                        ),
                        onTap: () {
                          //gunakan navigator untuk panggil Prodi
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fakultas(
                                        namaFakultas: 'Fakultas Pendidikan Bahasa dan Sastra',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam')),
                              ),
                              Container(
                                  padding: EdgeInsets.all(30),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: BarChart(BarChartData(
                                    titlesData: FlTitlesData(
                                      topTitles: SideTitles(showTitles: false),
                                      rightTitles:
                                          SideTitles(showTitles: false),
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
                                    maxY: 800,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    barGroups: barChartGroupData,
                                  )))
                            ],
                          ),
                        ),
                        onTap: () {
                          //gunakan navigator untuk panggil Prodi
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fakultas(
                                        namaFakultas: 'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Fakultas Pendidikan Teknologi dan Kejuruan')),
                              ),
                              Container(
                                  padding: EdgeInsets.all(30),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: BarChart(BarChartData(
                                    titlesData: FlTitlesData(
                                      topTitles: SideTitles(showTitles: false),
                                      rightTitles:
                                          SideTitles(showTitles: false),
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
                                    maxY: 800,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    barGroups: barChartGroupData,
                                  )))
                            ],
                          ),
                        ),
                        onTap: () {
                          //gunakan navigator untuk panggil Prodi
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fakultas(
                                        namaFakultas: 'Fakultas Pendidikan Teknologi dan Kejuruan',
                                      )));
                        },
                      ),
                    ]))));
  }
}
