import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/api/user_api.dart';
import 'package:hackathon_app/globalconstants/constants.dart';

class SymptomCheck extends StatefulWidget {
  @override
  _SymptomCheckState createState() => _SymptomCheckState();
}

class _SymptomCheckState extends State<SymptomCheck> {
  final _formKey = GlobalKey<FormState>();
  List<String> symptoms = [];
  bool diseaseFetched = false;
  var disList = [];
  String symptom1 = '';
  String symptom2 = '';
  String symptom3 = '';
  String symptom4 = '';
  String symptom5 = '';

  getDiseaseList() async {
    if (!_formKey.currentState.validate())
      return;
    else {
      setState(() {
        diseaseFetched = false;
      });
      symptoms.add(symptom1);
      symptoms.add(symptom2);
      symptoms.add(symptom3);
      symptoms.add(symptom4);
      symptoms.add(symptom5);
      disList = await getDiseases(symptoms);
      print(disList);
      setState(() {
        diseaseFetched = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Symptom Check"),
        centerTitle: true,
        backgroundColor: lightGreen,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: diseaseFetched
              ? Column(
                  children: [_buildDiseaseLists()],
                )
              : Column(
                  children: [
                    TextFormField(
                      onChanged: (val) {
                        setState(() {
                          symptom1 = val.trim();
                        });
                      },
                      validator: (val) {
                        if (val.isEmpty || val == '') {
                          return "Field cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter symptom 1",
                      ),
                    ),
                    TextFormField(
                      onChanged: (val) {
                        setState(() {
                          symptom2 = val.trim();
                        });
                      },
                      validator: (val) {
                        if (val.isEmpty || val == '') {
                          return "Field cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter symptom 2",
                      ),
                    ),
                    TextFormField(
                      onChanged: (val) {
                        setState(() {
                          symptom2 = val.trim();
                        });
                      },
                      validator: (val) {
                        if (val.isEmpty || val == '') {
                          return "Field cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter symptom 3",
                      ),
                    ),
                    TextFormField(
                      onChanged: (val) {
                        if (val.isNotEmpty) {
                          setState(() {
                            symptom4 = val.trim();
                          });
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter symptom 4",
                      ),
                    ),
                    TextFormField(
                      onChanged: (val) {
                        if (val.isNotEmpty) {
                          setState(() {
                            symptom5 = val.trim();
                          });
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter symptom 5",
                      ),
                    ),
                    FlatButton(
                      color: greenColor,
                      onPressed: getDiseaseList,
                      child: Text("Button"),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  _buildDiseaseLists() {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) =>
              _buildDiseaseListItem(disList, index),
          separatorBuilder: (context, index) => SizedBox(height: 30),
          itemCount: disList.length),
    );
  }

  _buildDiseaseListItem(List disList, int index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListTile(title: disList[index]["name"]),
    );
  }
}
