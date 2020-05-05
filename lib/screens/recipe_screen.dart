import 'package:flutter/material.dart';
import 'choose_device_screen.dart';

class RecommendedScreen extends StatefulWidget {
  @override
  double totalwater;
  double totalgrounds;
  RecommendedScreen( this.totalwater, this.totalgrounds);
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff4c748b),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Card(
                            elevation: 0,
                            color: Color(0xfff3f3f3),
                            shape: RoundedRectangleBorder(),
                            child: Column(
                              children: <Widget>[
                                Text("Recommended",
                                key: Key('rec-text'),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff4c748b))),
                                Text("_____________________________________",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff4c748b))),
                                Text(""),
                                Text("84g - course ground coffee",
                                key: Key('rec-grounds-text'),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff4c748b))),
                                Text("1183g - water",
                                key: Key('rec-water-text'),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff4c748b))),
                                Text(""),
                                Text(""),
                                Text("Enjoy your delicious coffee.",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff4c748b))),
                                Text(""),
                              ],
                            ))
                      ],
                    )),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(50, 100, 50, 0),
                  child: FlatButton(
                      child: Text("Done",
                      key: Key("done-btn"),
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              color: Color(0xffe5e5e5))),
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                      color: Color(0xff4c748b),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseDeviceScreen()));
                      }))
            ]));
  }
}
