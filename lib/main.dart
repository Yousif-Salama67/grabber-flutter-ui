import 'package:flutter/material.dart';
import 'package:grabber/pages/splash_page.dart';

void main() {
  runApp(Grabber());
}

class Grabber extends StatelessWidget {
  const Grabber({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
