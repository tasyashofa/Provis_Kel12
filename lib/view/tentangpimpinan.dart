import 'package:flutter/material.dart';

class TentangPimpinanPage extends StatefulWidget {
  const TentangPimpinanPage({Key? key}) : super(key: key);

  @override
  State<TentangPimpinanPage> createState() => _TentangPimpinanState();
}

class _TentangPimpinanState extends State<TentangPimpinanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pimpinan'),
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
                    title: const Text('Prof. Dr. M. Solehuddin M.Pd., M.A.'),
                    subtitle: const Text('Rektor'),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. H. Didi Sukyadi M.A.'),
                    subtitle: const Text(
                        "Wakil Rektor Bidang Pendidikan dan Kemahasiswaan"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. H. Agus Rahayu M.P.'),
                    subtitle: const Text(
                        "Wakil Rektor Bidang Sumber Daya dan Keuangan"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. Bunyamin Maftuh M.Pd., M.A.'),
                    subtitle: const Text(
                        "Wakil Rektor Bidang Perencanaan, Organisasi, dan Sistem Informasi"),
                    tileColor: Colors.white70),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                    leading: Image.network('assets/profile2.png'),
                    title: const Text('Prof. Dr. H. Adang Suherman M.A'),
                    subtitle: const Text(
                        "Wakil Rektor Bidang Riset, Internasional, Kerja sama, dan Usaha"),
                    tileColor: Colors.white70),
              ),
            ])));
  }
}
