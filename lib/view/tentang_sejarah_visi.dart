import 'package:flutter/material.dart';

class SejarahVisiPage extends StatefulWidget {
  const SejarahVisiPage({Key? key}) : super(key: key);

  @override
  State<SejarahVisiPage> createState() => _SejarahVisiPageState();
}

class _SejarahVisiPageState extends State<SejarahVisiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sejarah dan Visi Misi'),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text('Visi Misi dan Sejarah'),
                      ],
                    ))),
            Image.asset(
              'assets/logo_upi.png',
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 12,
            ),
            Card(
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text('Visi'),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Pelapor dan Unggul dalam Pengembangan Kurikulum Program Pendidikan, Layanan Akademik, dan Jasa Keprofesian.',
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ))),
            SizedBox(
              height: 12,
            ),
            Card(
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text('Misi'),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '1. Mengembangkan Kurikulum Program pendidikan akademik, vokasi, profesi, dan spesialis sesuai dengan standar yang ditetapkan. \n2. Mengoordinasikan penyelenggaraan program pendidikan akademik, vokasi, profesi dan spesialis yang transparan dan akuntabel. \n3. Menyelenggarakan seleksi dan layanan akademik program pendidikan akadaemik, vokasi, profesi dan spesialis yang berkualitas. \n4. Mengelola jasa keprofesian yang relevan dengan kebutuhan masyarakat.',
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
