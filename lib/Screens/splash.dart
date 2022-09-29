import 'dart:async';

import 'package:first_app/Widget/backgroundimage.dart.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      Child: Container(
        child: Padding(
          padding: const EdgeInsets.all(110.0),
          child: Image.asset(
            'assets/assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
