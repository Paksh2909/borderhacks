import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/globalconstants/constants.dart';

class SymptomCheck extends StatefulWidget {
  @override
  _SymptomCheckState createState() => _SymptomCheckState();
}

class _SymptomCheckState extends State<SymptomCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Symptom Check"),
        backgroundColor: lightGreen,
      ),
      body: Center(
        child: Text("Hi"),
      ),
    );
  }
}
//Pakshal ka lund chota
