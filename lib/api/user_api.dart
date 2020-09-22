import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon_app/models/user.dart';
import 'package:hackathon_app/notifier/user_notifier.dart';
import 'package:http/http.dart' as http;

getUserFromFirestore(FirebaseUser user, UserNotifier userNotifier) async {
  final firestoreInstance = Firestore.instance;
  String token = (await user.getIdToken(refresh: true)).token;
  // http.Response response = await http.get(
  //   url,
  //   headers: {
  //     "token": token,
  //     "uid": user.uid,
  //   },
  // );
  // var body = jsonDecode(response.body);
  // User firestoreUser = User.fromJson(body);
  // userNotifier.setUser(firestoreUser);
}

createUserInFirestore(FirebaseUser user) async {
  String token = (await user.getIdToken(refresh: true)).token;

  // await http.post(url,
  //     headers: {
  //       "token": token,
  //       "uid": user.uid,
  //     },
  //     body: jsonEncode({
  //       "name": user.displayName,
  //       "avatar": user.photoUrl,
  //       "email": user.email,
  //       "phone": user.phoneNumber,
  //     }));
}
