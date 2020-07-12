//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Example());
}

class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
//  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _locations = ['Student', 'Tutor', 'Counselor']; // Option 2
  String _selectedLocation; // Option 2
  String phoneNo;
  String smsCode;
  String verificationId;

  Future<void> verifyPhone() async {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 60.0,
              ),
              Container(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Enter Phone No.'),
                  maxLength: 10,
                  onChanged: (value){
                    this.phoneNo = value;
                  },
                ),
              ),
              SizedBox(height:20.0),
              RaisedButton(
                onPressed: verifyPhone,
                child:  Text('Verify'),
                textColor: Colors.white,
                elevation: 7.0,
                color: Colors.tealAccent[400],
              ),
            DropdownButton(  
                    hint: Text('I am a ..'), // Not necessary for Option 1
                    value: _selectedLocation,
                    onChanged: (newValue) {
                       setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                     items: _locations.map((location) {
                     return DropdownMenuItem(
                         child: new Text(location),
                          value: location,
                       );
                    }).toList(),
                  ),
                  /*
            Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Login'),
                color: Colors.tealAccent[400],
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            */
            ],
        ),
      ),
    ),
    );
  }
}