// import 'package:flut2shifa/datamahasiswa.dart';
import 'package:flut2shifa/datamahasiswa.dart';
// import 'package:flut2shifa/listfood.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const DataMahasiswa(),
    );
  }
}





