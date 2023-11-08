import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AppProvider extends ChangeNotifier{
  Future<String> signUp(String email,String password) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Done';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email';
      }
      return 'Something went wrong';
    } catch (e) {
      print(e);
      return 'Something went wrong';
    }
  }

  Future<String> signIn(String email,String password) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return 'Done';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user';
      }
      return 'Something went wrong';
    }
  }
}