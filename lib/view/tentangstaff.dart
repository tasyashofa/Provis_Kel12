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
                child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    padding: EdgeInsets.all(14),
                    //child: Text("baris 1"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                            width: 50,
                            height: 50,
                          ),
                        ]),
                        Column(children: const [
                          Text(
                            "Ahmad Fathi Ibrahimov",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "NIP 1844190048",
                            //textAlign: TextAlign.center,
                          ),
                        ]),
                      ],
                    )),
              ),
            ])));
  }
}
