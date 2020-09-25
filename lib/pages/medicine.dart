import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/globalconstants/constants.dart';

class Medicine extends StatefulWidget {
  @override
  _MedicineState createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicine"),
        centerTitle: true,
        backgroundColor: lightGreen,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Center(
        child: Text("Hi"),
      ),
    );
  }
}
