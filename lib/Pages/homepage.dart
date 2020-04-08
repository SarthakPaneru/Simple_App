// Home Page codes

import 'package:flutter/material.dart';
import 'triangle.dart';
import 'weekly_pay.dart';

// create stateful widget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // get the screen size of device
    final size = MediaQuery.of(context).size;
    double _height = size.height; // get height of orientation
    double _width = size.width; // get width of orientation
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // center allignment of widgets
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(_width*0.03),
              child: ButtonTheme(   // Set the height and width of button
                minWidth: _width*0.05,
                height: _height*0.08,
                child: RaisedButton(  
                  onPressed: navigateToWeeklyPay, // Navigates to 'Weekly Pay' Page 
                  child: Text("Weekly Pay",
                    style: TextStyle(
                      fontSize: _width*0.05,  // Font size of text
                    ),
                  ),
                ),
              ),
            ),
            ButtonTheme(    // Set the height and width of button
              minWidth: _width*0.05,
              height: _height*0.09,
              child: RaisedButton(
                onPressed: navigateToWhichTraiangle, // Navigates to 'Which Triangle' Page
                child: Text("Which Triangle",
                  style: TextStyle(
                    fontSize: _width*0.065
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
  // Navigates to 'Weekly Pay' Page 
  void navigateToWeeklyPay(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WeeklyPay()));
  }
  // Navigates to 'Which Triangle' Page
  void navigateToWhichTraiangle(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WhichTriangle()));
  }
}