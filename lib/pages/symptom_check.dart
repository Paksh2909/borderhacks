import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      ),
      body: Center(
        child: Text("Hi"),
      ),
    );
  }
}
