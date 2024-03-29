import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:quick_foodie/core/service/firestore_user.dart';
import 'package:quick_foodie/features/auth/data/models/user_model.dart';
import 'package:quick_foodie/features/auth/data/repos/auth_repo.dart';

class AuthRepoImplement implements AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  signupWithEmailAndPassword(
      {required String email, required String password, required String name}) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) async {
            ///name in google or facebook is user.user.displayName
        await FireStoreUser().addUserToFireStore(UserModel(
          userId: user.user!.uid,
          name: name,
          email: user.user!.email,
          pic: '',
        ));
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
