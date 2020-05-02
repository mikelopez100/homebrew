import 'package:flutter/material.dart';
import 'choose_device_screen.dart';
class RecommendedScreen extends StatefulWidget {
  @override
  _RecommendedScreenState createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  @override
  Widget build(BuildContext context) {
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
          OutlineButton(
            focusColor: Colors.blue,
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
                    MaterialPageRoute(builder: (context) => ChooseDeviceScreen()));
              },
              key: Key('done-btn'),
              child: Text("Done",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xfff3f3f3))))
        ],
      ),
    );
  }
}
