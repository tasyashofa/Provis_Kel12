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
          title: const Text('Staff'),
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
                    title: const Text('Fathi'),
                    subtitle: const Text("NIP 1844190048"),
                    tileColor: Colors.white70),
                  
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              InkWell(
                child: ListTile(
                  leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    title: const Text('Ibrahimov'),
                    subtitle: const Text("NIP 1844194048"),
                    tileColor: Colors.white70),
                  
              ),
            ])));
  }
}
