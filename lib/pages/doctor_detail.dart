import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/globalconstants/constants.dart';

class DoctorDetails extends StatefulWidget {
  final String name;
  final int contact;
  final String specialization;

  DoctorDetails({this.name, this.contact, this.specialization});

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        backgroundColor: lightGreen,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(widget.name),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("${widget.contact}"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text(widget.specialization),
            ),
            Divider(color: Colors.black, thickness: 1)
          ],
        ),
      ),
    );
  }
}
