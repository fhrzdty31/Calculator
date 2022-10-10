import 'package:calculator/pages/pembagian.dart';
import 'package:calculator/pages/pengurangan.dart';
import 'package:calculator/pages/perkalian.dart';
import 'package:flutter/material.dart';

import 'pages/penjumlahan.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Penjumlahan.name);
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Pengurangan.name);
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Perkalian.name);
                      },
                      child: const Text(
                        "×",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Pembagian.name);
                      },
                      child: const Text(
                        "÷",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
