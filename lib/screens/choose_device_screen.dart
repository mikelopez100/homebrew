import 'package:flutter/material.dart';
import 'package:homebrew/screens/cups_screen.dart';

class ChooseDeviceScreen extends StatefulWidget {
  @override
  _ChooseDeviceScreenState createState() => _ChooseDeviceScreenState();
}

class _ChooseDeviceScreenState extends State<ChooseDeviceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff3f3f3),
        iconTheme: IconThemeData(color: Color(0xff4c748b)),
      ),
        backgroundColor: Color(0xfff3f3f3),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("What coffee maker are you using?",
                  key: Key('coffeemaker-text'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      color: Color(0xff4c748b))),
              OutlineButton(
                  borderSide: BorderSide(
                      color: Color(0xff4c748b),
                      style: BorderStyle.solid,
                      width: 3.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {},
                  key: Key('french-press-selector'),
                  child: Text("French Press",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat-Medium',
                          color: Color(0xff4c748b)))),
              OutlineButton(
                  borderSide: BorderSide(
                      color: Color(0xff4c748b),
                      style: BorderStyle.solid,
                      width: 3.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {},
                  key: Key('drip'),
                  child: Text("Drip Machine",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat-Medium',
                          color: Color(0xff4c748b)))),
              OutlineButton(
                  borderSide: BorderSide(
                      color: Color(0xffe2e2e2),
                      style: BorderStyle.solid,
                      width: 3.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CupsScreen()));
                  },
                  key: Key('continue-btn'),
                  child: Text("Continue",
                      style: TextStyle(
                          fontFamily: 'Montserrat-Medium',
                          color: Color(0xff757474)))),
            ],
          ),
        ));
  }
}
