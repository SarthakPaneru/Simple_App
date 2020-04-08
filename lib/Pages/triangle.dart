import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WhichTriangle extends StatefulWidget {
  @override
  _WhichTriangleState createState() => _WhichTriangleState();
}

class _WhichTriangleState extends State<WhichTriangle> {
  // Controller for an editable text field
  TextEditingController side1 = new TextEditingController();
  TextEditingController side2 = new TextEditingController();
  TextEditingController side3 = new TextEditingController();
  int check; // initialed value used to check condition of triangle
  String triangle=" ";

  @override
  Widget build(BuildContext context) {
    // Get the screen size of device
    final size = MediaQuery.of(context).size;
    double _height = size.height; // get the height of orientation
    double _width = size.width; // get the width of orientation
    return Scaffold(
      appBar: AppBar(
        title: Text("Which Triangle")
      ),
      // main body of the page
      body: SingleChildScrollView( // Creates a box in which a single widget can be scrolled.
        child: Column(
          children: <Widget>[
            // padding accordingly to screen sizes
            Padding(
              padding: EdgeInsets.only(top: _height*0.05, left: _width*0.25, right: _width*0.175),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // align the widget to center
                children: <Widget>[
                  Expanded(
                    child: AutoSizeText("Enter the sides of Triangle", // autimatically resizes to fit eithin th screen
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      
                      minFontSize: 10,
                      maxLines: 1, // defines the text to be resized within a single line
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            // padding accordingly to screen sizes
            Padding(
              padding: EdgeInsets.only(left: _width*0.39, right: _width*0.39),
              child: Row(
                children: <Widget>[
                  // Flexible widget enables to use keyboardType widget
                  Flexible(
                    // creates textfield to enter data
                    child: new TextField(
                      keyboardType: TextInputType.number, // enables number to input
                      controller: side1,  // store the entered data in variable-side1
                      decoration: InputDecoration(
                        labelText: "Side-1"
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // padding accordingly to screen sizes
            Padding(
              padding: EdgeInsets.only(left: _width*0.39, right: _width*0.39, top: _height*0.02),
              child: Row(
                children: <Widget>[
                  // Flexible widget enables to use keyboardType widget
                  Flexible(
                    // creates textfield to enter data
                    child: new TextField(
                      keyboardType: TextInputType.number, // enables number to input
                      controller: side2,  // store the entered data in variable-side1
                      decoration: InputDecoration(
                        labelText: "Side-2"
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // padding accordingly to screen sizes
            Padding(
              padding: EdgeInsets.only(left: _width*0.39, right: _width*0.39, top: _height*0.02),
              child: Row(
                children: <Widget>[
                  // Flexible widget enables to use keyboardType widget
                  Flexible(
                    // creates textfield to enter data
                    child: new TextField(
                      keyboardType: TextInputType.number, // enables number to input
                      controller: side3,  // store the entered data in variable-side1
                      decoration: InputDecoration(
                        labelText: "Side-3"
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
                    minWidth: _width*0.31,
                    height: _height*0.08,
                    child: RaisedButton(
                      child: Text("Find",
                        style: TextStyle(
                          fontSize: _width*0.07
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          check = 0;
                          // checks if the input data fulfils the condition to form triangle
                          if ((double.parse(side1.text) + double.parse(side2.text)) > double.parse(side3.text)) {
                            if ((double.parse(side3.text) + double.parse(side2.text)) > double.parse(side1.text)) {
                              if ((double.parse(side1.text) + double.parse(side3.text)) > double.parse(side2.text)) {
                                check = 1;  //  set the value to 1 if condition is fulfilled
                              }
                            }
                          }
                          // if triangle the find which triangle
                          if (check == 1) {
                            if ((double.parse(side1.text) == double.parse(side2.text)) && (double.parse(side1.text) == double.parse(side3.text))) {
                              triangle = "Equilateral Triangle";
                            }
                            else if ((double.parse(side1.text) == double.parse(side2.text)) || (double.parse(side1.text) == double.parse(side3.text)) || (double.parse(side2.text) == double.parse(side3.text))) {
                              triangle = "Isosceles Triangle";
                            }
                            else {
                              triangle = "Scalene Triangle";
                            }
                          }
                          // if check values is not set to 1 than the input data di not form triangle
                          else if (check != 1) {
                            triangle = "Not a Triangle";
                          }
                          
                        });
                      }
                    ),
                  ),
                ],
              ),
            ),
            // padding accordingly to screen sizes
            Padding(
              padding: EdgeInsets.only(top: _height*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // center alingnment
                children: <Widget>[
                  // the 
                  Text("It is ",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: Text(triangle,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //),
      ),
    );
  }
}