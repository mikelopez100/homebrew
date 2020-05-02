import 'package:flutter/material.dart';
import 'package:homebrew/screens/recipe_screen.dart';

class CupsScreen extends StatefulWidget {
  @override
  _CupsScreenState createState() => _CupsScreenState();
}

class _CupsScreenState extends State<CupsScreen> {
  @override
  Widget build(BuildContext context) {
    var _controller;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff3f3f3),
        iconTheme: IconThemeData(color: Color(0xff4c748b)),
      ),
      backgroundColor: Color(0xfff3f3f3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text("How many cups would you like?",
                key: Key('cups-text'),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    color: Color(0xff4c748b))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
            child: TextField(
              controller: _controller,
              style: TextStyle(
                  color: Color(0xff4c748b),
                  fontSize: 14,
                  fontFamily: 'Montserrat'),
              key: Key('cup-textfield'),
              decoration: InputDecoration(
                  hintText: "Enter the number of cups",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff4c748b)),
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
          OutlineButton(
              color: Colors.blue,
              padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
              borderSide: BorderSide(
                  color: Color(0xff4c748b),
                  style: BorderStyle.solid,
                  width: 3.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecommendedScreen()));
              },
              key: Key('continue-cups-btn'),
              child: Text("Continue",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xfff3f3f3))))
        ],
      ),
    );
  }
}
