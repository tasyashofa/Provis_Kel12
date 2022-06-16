import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'prodi.dart';

class StatistikProdiPage extends StatefulWidget {
  const StatistikProdiPage({Key? key}) : super(key: key);

  @override
  State<StatistikProdiPage> createState() => _StatistikProdiPageState();
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

class _StatistikProdiPageState extends State<StatistikProdiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statistik Prodi'),
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
                                title: Center(child: Text('Matematika')),
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
                                  builder: (context) => Prodi(
                                        namaProdi: 'Matematika',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Ilmu Komputer')),
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
                                  builder: (context) => Prodi(
                                        namaProdi: 'Ilmu Komputer',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Biologi')),
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
                                  builder: (context) => Prodi(
                                        namaProdi: 'Biologi',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Kimia')),
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
                                  builder: (context) => Prodi(
                                        namaProdi: 'Kimia',
                                      )));
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Column(
                            children: [
                              const ListTile(
                                title: Center(child: Text('Fisika')),
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
                                  builder: (context) => Prodi(
                                        namaProdi: 'Fisika',
                                      )));
                        },
                      ),
                    ]))));
  }
}
