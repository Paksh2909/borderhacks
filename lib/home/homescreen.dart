import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/api/user_api.dart';
import 'package:hackathon_app/globalconstants/constants.dart';
import 'package:hackathon_app/notifier/auth_notifier.dart';
import 'package:hackathon_app/notifier/user_notifier.dart';
import 'package:hackathon_app/pages/doctor_detail.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> docList = [
    "Doc 1",
    "Doc 2",
    "Doc 3",
    "Doc 4",
    "Doc 5",
    "Doc 6",
    "Doc 7",
    "Doc 8",
    "Doc 9",
    "Doc 10",
  ];

  List<String> _searchedDocs = [];
  bool _foundDoc = false;
  bool _isLoading = false;

  @override
  void initState() {
    setUser();
    super.initState();
  }

  setUser() async {
    setState(() {
      _isLoading = true;
    });
    AuthNotifier authNotifier =
        Provider.of<AuthNotifier>(context, listen: false);
    UserNotifier userNotifier =
        Provider.of<UserNotifier>(context, listen: false);
    await getUserFromFirestore(authNotifier.user, userNotifier);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: _isLoading
                ? [Center(child: CircularProgressIndicator())]
                : <Widget>[_buildAppBar(height, width), _buildSearchList()],
          ),
          Positioned(
            top: -27,
            child: _buildSearchField(height, width),
          ),
        ],
      ),
    );
  }

  _buildAppBar(double height, double width) {
    UserNotifier userNotifier =
    Provider.of<UserNotifier>(context, listen: false);
    AuthNotifier authNotifier =
    Provider.of<AuthNotifier>(context, listen: false);
    print(userNotifier.user.gender);
    return Container(
      height: height * 0.20,
      width: width,
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hey,",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: width * 0.15),
                child: Text(
                  userNotifier.user.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildSearchField(double height, double width) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.2, left: width * 0.1),
      width: width * 0.8,
      child: TextField(
        onChanged: (val) {
          setState(() {
            _searchedDocs = [];
            _foundDoc = true;
          });
          if (val.isNotEmpty) {
            docList.forEach((doc) {
              if (doc.contains(val.trim()) ||
                  doc.toUpperCase().contains(val.trim()) ||
                  doc.toLowerCase().contains(val.trim())) {
                setState(() {
                  _searchedDocs.add(doc);
                });
              }
            });
            if (_searchedDocs.isEmpty) {
              setState(() {
                _foundDoc = false;
              });
            }
          }
        },
        style: TextStyle(fontSize: 18, color: lightGreen),
        decoration: InputDecoration(
          hintText: "Search Doctor",
          hintStyle: TextStyle(color: Theme.of(context).accentColor),
          suffixIcon: Icon(
            Icons.search,
            size: 30,
            color: Theme.of(context).accentColor,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  _buildSearchList() {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        itemCount:
            _searchedDocs.isEmpty ? docList.length : _searchedDocs.length,
        itemBuilder: (context, index) => _buildCourseListItem(
            _searchedDocs.isEmpty ? docList[index] : _searchedDocs[index],
            index),
        separatorBuilder: (context, index) => SizedBox(height: 30),
      ),
    );
  }

  _buildCourseListItem(String title, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorDetails()));
      },
      child: Container(
        height: 80,
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline4,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
