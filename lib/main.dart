import 'home.dart';
import 'pages/penjumlahan.dart';
import 'pages/pengurangan.dart';
import 'pages/perkalian.dart';
import 'pages/pembagian.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: const Home(),
      routes: {
        Penjumlahan.name: (context) => const Penjumlahan(),
        Pengurangan.name: (context) => const Pengurangan(),
        Perkalian.name: (context) => const Perkalian(),
        Pembagian.name: (context) => const Pembagian()
      },
    );
  }
}
