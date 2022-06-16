import 'package:flutter/material.dart';

class TentangFasilitasPage extends StatefulWidget {
  const TentangFasilitasPage({Key? key}) : super(key: key);

  @override
  State<TentangFasilitasPage> createState() => _TentangFasilitasState();
}

class _TentangFasilitasState extends State<TentangFasilitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Fasilitas'),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true,
      children: [
        InkWell( //baris 2
            onTap: () {
                //gunakan navigator untuk panggil RincianFakultas
                // Navigator.push(context, MaterialPageRoute(builder: (context) => RincianFakultas(namaFakultas: 'FPIPS',)));
              },
          child: Container(
            // decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Expanded(
                child: Card(
                  shadowColor: Colors.black,
                  child : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: 100,
                          height: 100),
                        SizedBox(
                          height: 10),
                        Text(
                            'Kolam Renang',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Universitas Pendidikan Indonesia menyediakan kolam renang yang dapat digunakan oleh banyak orang.',
                          style: TextStyle(
                          fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Kolam renang ini buka mulai pukul 08.00 WIB hingga pukul 15.30 WIB. Bagi mahasiswa UPI yang ingin berenang di sana dikenakan biaya Rp5.000 untuk hari biasa dan Rp10.000,- untuk akhir pekan. Kolam ini dapat digunakan untuk umum dengan tarif sebesar Rp10.000,- untuk hari biasa dan Rp20.000,- untuk akhir pekan.',
                          style: TextStyle(
                          fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                ),]
                ),
            )
          ),
        SizedBox(height: 12),
        InkWell( //baris 2
            onTap: () {
                //gunakan navigator untuk panggil RincianFakultas
                // Navigator.push(context, MaterialPageRoute(builder: (context) => RincianFakultas(namaFakultas: 'FPIPS',)));
              },
          child: Container(
            // decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Expanded(
                child: Card(
                  shadowColor: Colors.black,
                  child : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: 100,
                          height: 100),
                        SizedBox(
                          height: 10),
                        Text(
                            'Kolam Renang',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Universitas Pendidikan Indonesia menyediakan kolam renang yang dapat digunakan oleh banyak orang.',
                          style: TextStyle(
                          fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Kolam renang ini buka mulai pukul 08.00 WIB hingga pukul 15.30 WIB. Bagi mahasiswa UPI yang ingin berenang di sana dikenakan biaya Rp5.000 untuk hari biasa dan Rp10.000,- untuk akhir pekan. Kolam ini dapat digunakan untuk umum dengan tarif sebesar Rp10.000,- untuk hari biasa dan Rp20.000,- untuk akhir pekan.',
                          style: TextStyle(
                          fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                ),]
                ),
            )
          ),
        ]),
      ),
    );
  }
}
