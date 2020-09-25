import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon_app/models/user.dart';
import 'package:hackathon_app/notifier/user_notifier.dart';

final firestoreInstance = FirebaseFirestore.instance;

getUserFromFirestore(User firebaseUser, UserNotifier userNotifier) async {
  DocumentSnapshot userDoc =
      await firestoreInstance.collection("User").doc(firebaseUser.uid).get();
  CustomUser user = CustomUser.fromJson(userDoc.data());
  userNotifier.setUser(user);
}

createUserInFirestore(User user, String gender) async {
  firestoreInstance.collection("User").doc(user.uid).set({
    "name": user.displayName,
    "email": user.email,
    "gender": gender,
  });
}