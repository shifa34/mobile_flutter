import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myshopshifa/landingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // waktu splashscreen
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              './lib/assets/logoshop.png', // Ganti dengan path yang benar
              width: 200.0,
            ),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
