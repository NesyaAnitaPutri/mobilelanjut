import 'dart:async';

import 'dashboard_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => DashboardScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
              alignment: Alignment.center,
              textDirection: TextDirection.rtl,
              fit: StackFit.loose,
              clipBehavior: Clip.hardEdge,
              children: [
                Image(
                    image: AssetImage(
                      'assets/bg-splash.jpg',
                    ),
                    height: MediaQuery.of(context).size.height),
                Image(
                  image: AssetImage('assets/yubis-logo.png'),
                  width: 150,
                ),
              ]),
        );
  }
}
