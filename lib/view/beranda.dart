import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        foregroundColor: Colors.white,
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
                            decoration: BoxDecoration(
                                color: Colors.primaries[index],
                                borderRadius: BorderRadius.circular(32)),
                          ),
                        ),
                      ),
                    )),
            SizedBox(height: 12),
            Card(
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text('Berita'),
                      ],
                    ))),
            SizedBox(
              height: 12,
            ),
            Card(
                child: SizedBox(
              height: 100,
            )),
            SizedBox(
              height: 12,
            ),
            Card(
                child: SizedBox(
              height: 100,
            )),
            SizedBox(
              height: 12,
            ),
            Card(
                child: SizedBox(
              height: 100,
            )),
            SizedBox(
              height: 12,
            ),
            Card(
                child: SizedBox(
              height: 100,
            )),
          ],
        ),
      ),
    );
  }
}
