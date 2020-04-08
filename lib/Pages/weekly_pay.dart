// 'Weekly Pay' page codes

import 'package:flutter/material.dart';

class WeeklyPay extends StatefulWidget {
  @override
  _WeeklyPayState createState() => _WeeklyPayState();
}

class _WeeklyPayState extends State<WeeklyPay> {
  // Controller for an editable text field
  TextEditingController hourlyWage = new TextEditingController();
  TextEditingController totalRegularHours = new TextEditingController();
  TextEditingController totalOverTimeHours = new TextEditingController();
  String result = "0"; // Initial value to display

  @override
  Widget build(BuildContext context) {
    // Get the screen size of device
    final size = MediaQuery.of(context).size;
    double _height = size.height; // get the height of orientation
    double _width = size.width; // get the width of orientation
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Weekly Pay"),
      ),
      //  resizeToAvoidBottomInset: false,
      //  
      //  You shoulnot use above code as it disables scrolling..
      //  when you use keyboard to input

      //  the below code aka singlechildscrollview makes scrolling possible
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                // padding accordingly to screen sizes
                padding: EdgeInsets.only(top: _height*0.05, right: _width*0.3),
                child: Row(
                  children: <Widget>[
                    Text("Input Hourly Wage: ",
                      style: TextStyle(
                        fontSize: _width*0.04, // creating font size according to device  screen size
                      ),
                    ),
                    // Flexible widget enables to use keyboardType widget
                    new Flexible(
                      // creates textfield to enter data
                      child: new TextField(
                        keyboardType: TextInputType.number, // enables only number to input
                        controller: hourlyWage, // store the entered data in variable-hourlyWage
                        style: TextStyle(
                          fontSize: _width*0.04, // creating font size according to device  screen size
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // padding accordingly to screen sizes
              Padding(
                padding: EdgeInsets.only(top: _height*0.02, right: _width*0.3),
                child: Row(
                  children: <Widget>[
                    Text("Input Total Regular Hours: ",
                      style: TextStyle(
                        fontSize: _width*0.04, // creating font size according to device  screen size
                      ),
                    ),
                    // Flexible widget enables to use keyboardType widget
                    new Flexible(
                      // creates textfield to enter data
                      child: new TextField(
                        keyboardType: TextInputType.number,
                        controller: totalRegularHours, // store the entered data in variable-totalRegularHours
                        style: TextStyle(
                          fontSize: _width*0.04, // creating font size according to device  screen size
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // padding accordingly to screen sizes
              Padding(
                padding: EdgeInsets.only(top: _height*0.02, right: _width*0.3),
                child: Row(
                  children: <Widget>[
                    Text("Input Total Over Time Hours: ",
                      style: TextStyle(
                        fontSize: _width*0.04, // creating font size according to device  screen size
                      ),
                    ),
                    // Flexible widget enables to use keyboardType widget
                    new Flexible(
                      // creates textfield to enter data
                      child: new TextField(
                        keyboardType: TextInputType.number,
                        controller: totalOverTimeHours, // store the entered data in variable-totalOverTimeHours
                        style: TextStyle(
                          fontSize: _width*0.04, // creating font size according to device  screen size
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // padding accordingly to screen sizes
              Padding(
                padding: EdgeInsets.only(top: _height*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonTheme(  // Set the height and width of button
                      minWidth: _width*0.03,
                      height: _height*0.06,
                      child: RaisedButton(
                        child: Text("Calculate",
                          style: TextStyle(
                            fontSize: _width*0.05, // creating font size according to device  screen size
                          ),
                        ),
                        // determines what happens if the button is pressed
                        onPressed: () {
                          // Notify the framework that the internal state of this object has changed.
                          setState(() {
                            // algotithms to follow
                            double calculate = double.parse(hourlyWage.text) * double.parse(totalRegularHours.text) + double.parse(totalOverTimeHours.text) * 1.5 * double.parse(hourlyWage.text);  
                            result = calculate.toString(); // Returns a string representation of this integer.
                          });
                        }
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Weekly Pay: ",
                    style: TextStyle(
                      fontSize: _width*0.06, // creating font size according to device  screen size
                    ),
                  ),
                  // the result obtained above is displayed
                  new Expanded(
                    child: new Text(result,
                      style: TextStyle(
                        fontSize: _width*0.06, // creating font size according to device  screen size
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}