import 'package:flutter/material.dart';
import 'package:grabber/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Center(
          child: Image(image: AssetImage("assets/images/logo/Grabber.png")),
        ),
      ),
    );
  }
}
