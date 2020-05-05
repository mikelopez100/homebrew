import 'package:flutter/material.dart';
import 'package:homebrew/screens/cups_screen.dart';

class ChooseDeviceScreen extends StatefulWidget {
  @override
  double selected = 0;
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff4c748b),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(children: <Widget>[
                    ListTile(
                      onTap: () {
                        if (widget.selected == 0) {
                          widget.selected = 1;
                        } else if (widget.selected == 1) {
                          widget.selected = 0;
                        } else if (widget.selected == 2) {
                          widget.selected = 1;
                        }

                        setState(() {});
                      },
                      trailing: widget.selected == 1
                          ? Icon(Icons.done, color: Color(0xff4c748b))
                          : null,
                      enabled: true,
                      key: Key('french-press-selector'),
                      title: Text("French Press",
                          style: TextStyle(
                              color: Color(0xff4c748b),
                              fontFamily: 'Montserrat',
                              fontSize: 18)),
                      selected: false,
                    ),
                    Divider(thickness: 2, color: Color(0xff4c748b)),
                    ListTile(
                      onTap: () {
                        if (widget.selected == 0) {
                          widget.selected = 2;
                        } else if (widget.selected == 2) {
                          widget.selected = 0;
                        } else if (widget.selected == 1) {
                          widget.selected = 2;
                        }

                        setState(() {});
                      },
                      trailing: widget.selected == 2
                          ? Icon(Icons.done, color: Color(0xff4c748b))
                          : null,
                      enabled: true,
                      key: Key('drip-machine-selector'),
                      title: Text("Drip Machine",
                          style: TextStyle(
                              color: Color(0xff4c748b),
                              fontFamily: 'Montserrat',
                              fontSize: 18)),
                      selected: false,
                    )
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                child: FlatButton(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                    color: widget.selected == 2 || widget.selected == 1
                        ? Color(0xff4c748b)
                        : Color(0xffe2e2e2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CupsScreen(widget.selected)));
                      
                    },
                    key: Key('continue-btn'),
                    child: Text("Continue",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            color: widget.selected == 2 || widget.selected == 1
                                ? Color(0xffe5e5e5)
                                : Color(0xff757474)))),
              )
            ],
          ),
        ));
  }
}
