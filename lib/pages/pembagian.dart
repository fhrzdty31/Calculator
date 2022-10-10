import 'package:flutter/material.dart';

class Pembagian extends StatefulWidget {
  const Pembagian({Key? key}) : super(key: key);
  static const name = "Pembagian";

  @override
  State<Pembagian> createState() => _PembagianState();
}

class _PembagianState extends State<Pembagian> {
  double x = 0, y = 0;
  String r = "Hasil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Pembagian.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    r,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Angka Pertama"),
              onChanged: (value) {
                x = double.parse(value);
                setState(() {
                  r = (x + y).toString();
                });
              },
            ),
          ),
          const Text(
            "÷",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Angka Kedua"),
              onChanged: (value) {
                y = double.parse(value);
                setState(() {
                  r = (x / y).toString();
                });
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.calculate),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
