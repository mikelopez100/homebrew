import 'package:flutter/material.dart';
import 'dart:async';

import 'package:homebrew/screens/choose_device_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChooseDeviceScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4c748b),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "HOMEBREW", key: Key('homebrew-text'), textAlign: TextAlign.center, style: TextStyle(fontSize: 48, fontFamily: 'Norwester',color: Colors.white)
          ),
          SizedBox(height:2),
          Text(
            "Great Coffee at Home", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontFamily: 'Kollektif',  color: Colors.white),
          )
        ],
      )),
    );
  }
}