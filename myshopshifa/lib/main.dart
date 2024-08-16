import 'package:flutter/material.dart';
// import 'package:myshopshifa/onbording.dart';
import 'package:myshopshifa/splashscreen.dart';
// import 'package:myshopshifa/list_user.dart';
// import 'package:myshopshifa/productlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade300),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}







