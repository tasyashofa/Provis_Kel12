import 'package:flutter/material.dart';

class TentangStaffPage extends StatefulWidget {
  const TentangStaffPage({Key? key}) : super(key: key);

  @override
  State<TentangStaffPage> createState() => _TentangStaffState();
}

class _TentangStaffState extends State<TentangStaffPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dekan Fakultas'),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: ListView(
                padding: EdgeInsets.all(20),
                shrinkWrap: true,
                children: [
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Dr. Rudi Susilana, M.Si.'),
                    subtitle: const Text('Fakultas Ilmu Pendidikan (FIP)'),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Dr. Agus Mulyana M.Hum.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Ilmu Pengetahuan Sosial (FPIPS)"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. Hj. Tri Indri Hardini, M.Pd.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Bahasa dan Sastra (FPBS)"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Dr. Iwa Kuntadi, S.Pd., M.Pd.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Teknologi dan Kejuruan (FPTK)"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. H. Tatang Herman, M.Ed.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA)"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. H. Eeng Ahman, M.S.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Ekonomi dan Bisnis (FPEB)"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Dr. Boyke Mulyana, M.Pd.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Olahraga dan Kesehatan (FPOK)"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Dr. Zakaria S. Soetedja, M.Sn.'),
                    subtitle: const Text(
                        "Fakultas Pendidikan Seni dan Desain (FPSD)"),
                    tileColor: Colors.white70),
              ),
            ])));
  }
}
