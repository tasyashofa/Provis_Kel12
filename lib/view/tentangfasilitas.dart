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
        appBar: AppBar(
          title: const Text('Fasilitas'),
          foregroundColor: Colors.white,
        ),
        body: Center(
            child: ListView(
                padding: EdgeInsets.all(20),
                shrinkWrap: true,
                children: [
              InkWell(
                child: ListTile(
                  leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    title: const Text('Kolam Renang'),
                    subtitle: const Text("Ini Kolam UPI"),
                    tileColor: Colors.white70),
                  
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
            ])));
  }
}
