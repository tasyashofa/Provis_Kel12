import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Berita extends StatelessWidget {
  String namaBerita;

  Berita({Key? key, required this.namaBerita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Container(
                child: Text(
              "$namaBerita",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Ink.image(
                  padding: const EdgeInsets.all(12),
                  height: 200,
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/gedung_isola.jpeg',
                  ),
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                icon: const Icon(Icons.calendar_month),
                onPressed: () => {},
              ),
              Text('Minggu, 10 Juni 2022')
            ]),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Most surveys conducted by various study programs at Universitas Pendidikan Indonesia show that corporations and government institutions demand that UPI alumni should possess soft skills needed to be able to best fit in with the professional environment once they enter employment, apart from the hard skills that they have studied formally on campus. \nSoft skills constitute indirect abilities within individuals that relate to communication, social, and adaptation. For instance, a marketer has the responsibility to attract customer interest. Hence, Soft skills are necessary for the professional setting especially, besides intellective skills, or even they are not just necessary, but very important. Here is how soft skills work in business and academic settings..',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
