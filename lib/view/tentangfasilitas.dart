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
                        Image.asset("kolam_upi.jpg",
                          // width: 50,
                          height: 250
                          ),
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
                        Image.asset("classroom.jpg",
                          // width: 100,
                          height: 250
                          ),
                        SizedBox(
                          height: 10),
                        Text(
                            'Ruang Kelas',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Kampus Bumi Siliwangi Universitas Pendidikan Indonesia dilengkapi dengan ruang kelas yang berjumlah 123 kelas. Ruang kelas tersebut dapat diakses selama mulai dari pukul 07.00 hingga 18.00.',
                          style: TextStyle(
                          fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Ruang kelas biasa digunakan untuk kegiatan belajar mengajar di lingkungan kampus. Selain itu, terdapat sekitar 70 ruang laboratorium yang tersebar di delapan fakultas.',
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
                        Image.asset("stadion.jpg",
                          // width: 100,
                          height: 250
                          ),
                        SizedBox(
                          height: 10),
                        Text(
                            'Stadion',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Stadion UPI biasa digunakan untuk kegiatan olahraga, perkuliahan, maupun acara-acara kemahasiswaan. Stadion ini memiliki trak lari, lapangan sepak bola, fasilitas terapi kaki, pull up, lompat jauh, lempar lembing, lempar cakram, lontar martil & tolak peluru serta tribun yang mampu menampung sebanyak 500 penonton.',
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
                        Image.asset("tenis_indoor.jpg",
                          // width: 100,
                          height: 250
                          ),
                        SizedBox(
                          height: 10),
                        Text(
                            'Lapangan Tenis Indoor & Outdoor',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Lapangan tenis UPI mempunyai standard nasional untuk keperluan pendidikan dan perlombaan cabang tenis tingkat nasional. Selain Kolam Renang, UPI juga menyediakan Lapangan Tenis Outdoor. Lapangan ini biasanya digunakan oleh mahasiswa Fakultas Pendidikan Olahraga dan Kesehatan. Selain itu, lapangan ini juga digunakan untuk berlatih olahraga softball dan baseball anak-anak serta mahasiswa yang tergabung di dalam klub atau UKM kampus.',
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
