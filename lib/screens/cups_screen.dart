import 'package:flutter/material.dart';
import 'package:homebrew/screens/recipe_screen.dart';

class CupsScreen extends StatefulWidget {
  @override
  int choice;
  CupsScreen(this.choice);
  _CupsScreenState createState() => _CupsScreenState();
}

class _CupsScreenState extends State<CupsScreen> {
  @override
  Widget build(BuildContext context) {
    calculateRecipe(double cups, int choice){
      if(choice==1){
        double totalwater = 236.56*cups;
        double totalgrounds = totalwater/14;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommendedScreen(totalgrounds, totalwater)));
      }
      else if(choice==2){
        double totalwater = 236.56*cups;
        double totalgrounds = totalwater/17;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommendedScreen(totalgrounds, totalwater)));
      }
    }
    
    TextEditingController taskCtrl = TextEditingController();
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
              Text("How many cups would you like?",
                  key: Key('cups-text'),
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
                    child: TextField(
                      controller: taskCtrl,
                      onChanged: (text) {},
                      style: TextStyle(
                          color: Color(0xff4c748b),
                          fontSize: 14,
                          fontFamily: 'Montserrat'),
                      key: Key('cup-textfield'),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                child: FlatButton(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                    color: Color(0xff4c748b),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      if()
                      double cups  = double.parse(taskCtrl.text);
                      
                      calculateRecipe(cups, widget.choice);
                    },
                    key: Key('cups-continue-btn'),
                    child: Text("Continue",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            color: Color(0xffe5e5e5)))),
              ),
            ],
          ),
        ));
  }
}
