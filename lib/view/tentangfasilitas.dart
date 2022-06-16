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
        child:
            ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("kolam_upi.jpg",
                                  // width: 50,
                                  height: 250),
                              SizedBox(height: 10),
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
                              Text(
                                'Universitas Pendidikan Indonesia menyediakan kolam renang yang dapat digunakan oleh banyak orang.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Kolam renang ini buka mulai pukul 08.00 WIB hingga pukul 15.30 WIB. Bagi mahasiswa UPI yang ingin berenang di sana dikenakan biaya Rp5.000 untuk hari biasa dan Rp10.000,- untuk akhir pekan. Kolam ini dapat digunakan untuk umum dengan tarif sebesar Rp10.000,- untuk hari biasa dan Rp20.000,- untuk akhir pekan.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
          SizedBox(height: 12),
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("classroom.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
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
                              Text(
                                'Kampus Bumi Siliwangi Universitas Pendidikan Indonesia dilengkapi dengan ruang kelas yang berjumlah 123 kelas. Ruang kelas tersebut dapat diakses selama mulai dari pukul 07.00 hingga 18.00.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Ruang kelas biasa digunakan untuk kegiatan belajar mengajar di lingkungan kampus. Selain itu, terdapat sekitar 70 ruang laboratorium yang tersebar di delapan fakultas.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
          SizedBox(height: 12),
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("stadion.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
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
                              Text(
                                'Stadion UPI biasa digunakan untuk kegiatan olahraga, perkuliahan, maupun acara-acara kemahasiswaan. Stadion ini memiliki trak lari, lapangan sepak bola, fasilitas terapi kaki, pull up, lompat jauh, lempar lembing, lempar cakram, lontar martil & tolak peluru serta tribun yang mampu menampung sebanyak 500 penonton.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
          SizedBox(height: 12),
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("tenis_indoor.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
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
                              Text(
                                'Lapangan tenis UPI mempunyai standard nasional untuk keperluan pendidikan dan perlombaan cabang tenis tingkat nasional. Selain Kolam Renang, UPI juga menyediakan Lapangan Tenis Outdoor. Lapangan ini biasanya digunakan oleh mahasiswa Fakultas Pendidikan Olahraga dan Kesehatan. Selain itu, lapangan ini juga digunakan untuk berlatih olahraga softball dan baseball anak-anak serta mahasiswa yang tergabung di dalam klub atau UKM kampus.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
          SizedBox(height: 12),
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("golf.png",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Lapangan Golf',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lapangan Golf UPI merupakan salah satu tempat sarana dan prasarana yang disediakan UPI untuk menunjang kebutuhan dan keperluan di bidang keolahragaan yang berlokasi di bagian atas UPI dekat Cilimus.Lapang golf ini memiliki desain yang unik, lapangan golf di setiap tempat selalu berbeda ukuran, topografi dengan lingkungan sekitar yang mendukung membuat lapangan golf sebagai tempat olahraga paling indah dan paling sejuk, karena di desain khusus berada di alam terbuka.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
          SizedBox(height: 12),
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("badminton.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Lapangan Badminton',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'UPI memiliki lapangan badminton yang sering digunakan untuk kejuaraan nasional serta kegiatan mahasiswa lainnya. Lapangan ini terletak di sport hall UPI.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
          InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("hoki.png",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Lapangan Hoki',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lapangan hoki terletak di Gedung Gymnasium UPI, yang juga pernah digunakan untuk kompetisi tingkat nasional, seperti Pekan Olahraga Nasional.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("jogging.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Lintasan Jogging',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lintasan jogging yang terletak di stadion UPI ini diperuntukan untuk cabang olahraga atletik dan lomba lari yang biasa digunakan untuk kepentingan perkuliahan ataupun umum.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("basket.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Lapangan Basket',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lapangan basket terletak di Gedung Gymnasium UPI, biasa digunakan untuk kegiatan perkuliahan atau kegiatan mahasiswa.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("softball.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Lapangan Softball',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lapangan Softball UPI merupakan sebuah fasilitas lapangan yang dipergunakan untuk proses perkuliahan, pembinaan dan sekaligus pertandingan tingkat nasional.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("al_furqon.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Masjid Al-Furqon',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Masjid Al-Furqon merupakan salah satu icon yang dimiliki oleh Universitas Pendidikan Indonesia. Al-Furqon sering dipakai untuk kegiatan keagamaan yang dilaksanakan oleh para mahasiswa maupun dosen UPI. Masjid ini juga terbuka untuk umum, sehingga masjid ini juga sering dipakai untuk shalat berjamaah 5 waktu maupun shalat Jum’at.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("diksti.png",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Direktorat STI',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Direktorat Sistem dan Teknologi Informasi merupakan penyelenggara urusan bidang pengembangan sistem informasi, layanan aplikasi teknologi informasi, teknologi pembelajaran digital, dan infrastruktur keamanana sistem dan teknologi informasi.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("balai_bahasa.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Balai Bahasa',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Balai Bahasa menyediakan fasilitas untuk belajar bahasa asing khususnya untuk sivitas akademika UPI terutama bagi tenaga edukatif yang akan melanjutkan studinya ke luar negeri. Begitu pula bagi tenaga administrasi/mahasiswa asing yang ingin belajar bahasa Indonesia sebagai bahasa asing. Balai Bahasa juga menyediakan sarana elektronik dan hasil-hasil rekamannya.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("perpustakaan.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Perpustakaan',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Perpustakaan UPI merupakan sarana informasi bagi seluruh warga UPI maupun umum. Tersedia ruang baca yang dilengkapi dengan buku teks, jurnal, disertasi/tesis/skripsi, dan sumber lainnya. Waktu layanan yang diberikan yaitu mulai pukul 08:00-18:00 WIB untuk Senin-Kamis serta 08:00-11:00 WIB dan 13:30-18:30 untuk hari Jumat.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("uc.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'University Center',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Gedung University Center terdiri atas 6 lantai. Banyak sekali kegiatan yang biasa dilakukan di gedung UC, Salah satunya yaitu pelatihan penulisan jurnal. Pada pelatihan tersebut, mahasiswa mempelajari cara menulis jurnal secara baik dan benar hingga jurnal tersebut bisa dipublikasikan. Selain itu di gedung ini juga sering diadakan conference. Pada gedung UC terdapat kesekretariatan berbagai UPT, diantaranya UPI Press, Unit Layanan Terpadu UPI, Direktorat International Affair, dan UPI TV.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("museum.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Museum Pendidikan',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Museum Pendidikan Nasional adalah sebuah museum yang berada di kawasan Universitas Pendidikan Indonesia, yang menyajikan bagaimana pendidikan di masa lalu dan juga di masa yang akan datang.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("poliklinik.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Poliklinik',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Poliklinik merupakan tempat yang disediakan oleh UPI untuk memberikan layanan kesehatan kepada para sivitas akademika. Untuk berobat ke Poliklinik, mahasiswa hanya perlu melampirkan Fotocopy KTM nya untuk mendapatkan pembiayaan berobat yang gratis dari Poliklinik. Poliklinik juga bisa dipakai oleh masyarakat sekitar.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("gymnasium.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Gymnasium',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Gymnasium Universitas Pendidikan Indonesia merupakan gedung yang dapat digunakan untuk kegiatan olahraga. Seperti Basket, Bola Voli, Futsal, Tenis meja, serta Bulutangkis. Namun, tidak hanya itu, kegiatan lain pun dapat dilakukan di Gymnasium ini, diantaranya pembelajaran, ceremony wisuda, orientasi pengenalan kampus, tempat untuk kejuaraan nasional hingga internasional, dan acara-acara besar lainnya.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("taman.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Taman UPI',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Taman ini terletak di belakang Gedung Rektorat Universitas Pendidikan Indonesia. Taman ini merupakan fasilitas kampus yang bisa dinikmati oleh siapa saja. Untuk pintu masuk utama ini biasa dilewati oleh pengendara roda dua hingga roda empat serta para pejalan kaki. Tentunya terdapat fasilitas keamanan seperti tersedia satpam, dan halte sebagai tempat pemberhentian kendaraan terutama transportasi umum.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("sps.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Gedung Pascasarjana',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'SPs UPI memiliki visi Meraih Pengakuan Internasional Penyelenggaraan Pendidikan Pascasarjana Bidang Ilmu Pendidikan, Pendidikan Ilmu Murni, dan Pendidikan Profesi Tingkat Asia Tahun 2025. Untuk mencapai visi tersebut dan mendapat pengakuan internasional, SPs UPI telah melakukan beberapa langkah konkrit seperti menjalin kerjasama dengan sivitas akademika, lembaga pendidikan nasional dan internasional, menyelenggarakan program internasional yang bermitra dengan universitas di luar negeri dan merancang program pendidikan yang terbuka untuk masyarakat internasional.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("bni.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Perbankan',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Aktivitas Perbankan dipermudah dengan adanya fasilitas perbankan seperti Kantor Cabang Pembantu BNI, atm BJB, atm BRI dan atm Mandiri. Mahasiswa UPI juga mendapatkan ktm combo yang juga berfungsi sebagai kartu debit BNI dan tapcash BNI. Layanan perbankan tersebut dapat digunakan untuk mempermudah berbagai aktivitas dan keperluan mahasiswa seperti membayar UKT, membayar biaya parkir dan sebagainya.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("rektorat.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Gedung Rektorat',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Gedung rektorat, sebuah bangunan bergaya arsitektur desain Eropa dan Hindia Belanda menjadi sebuah ikonik di Universitas Pendidikan Indonesia. Gedung rektorat dulu dikenal dengan villa Isola, sekarang beralih fungsi setelah beberapa waktu. Gedung ini telah menjadi saksi bisu sejarah – sejarah penting yang telah terjadi.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("lppm.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Gedung LPPM',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Gedung Lembaga Penelitian dan Pengabdian kepada Masyarakat atau yang biasa disebut Gedung LPPM, merupakan lembaga pendukung Universitas yang memiliki posisi strategis dalam membangun citra positif masyarakat terhadap keberadaan dan peran UPI dalam pembangunan pendidikan bangsa. Lembaga Penelitian dan Pengabdian kepada Masyarakat ini sebagai bagian integral yang mampu mengembangkan, memperluas, dan meningkatkan mutu Penelitian Pengabdian kepada masyarakat dalam upaya menetapkan dan menyempurnakan kegiatan pengembangan serta pembelajaran kepada  masyarakat.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("achmadsanusi.jpg",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Gedung BPU Achmad Sanusi',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Nama gedung ini diabadikan dengan nama rektorat ke 2 IKIP Bandung yang bernama Prof. Dr. H. Achmad Sanusi, S.H., Magister Administrasi Publik. Gedung ini merupakan sebuah gedung serbaguna yang bisa dipakai untuk acara resmi dari kampus maupun bisa disewa sebagai gedung pernikahan untuk khalayak masyarakat.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
              SizedBox(height: 12),
              InkWell(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Card(
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset("asrama.png",
                                  // width: 100,
                                  height: 250),
                              SizedBox(height: 10),
                              Text(
                                'Asrama',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Asrama merupakan fasilitas tempat tinggal bagi mahasiswa Universitas Pendidikan Indonesia. Asrama UPI memiliki dua yaitu asrama untuk mahasiswa putra dan asrama untuk mahasiswa putri. Fasilitas ini bertujuan agar terciptanya tempat tinggal yang kondusif, aman dan nyaman bagi mahasiswa saat melakukan studinya di UPI.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ]),
              )),
        ]),
      ),
    );
  }
}
