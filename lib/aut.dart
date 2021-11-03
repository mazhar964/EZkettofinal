
import 'package:flutter/src/widgets/navigator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'home1.dart';
import 'package:flutter/cupertino.dart';





class  AuthenticationService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future creatNewUser(String email,String password,context) async{
//print("firebase function");
    //print(email);
   // print(password);

    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password,);
      User user = result.user;
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => Login()),
              (route) => false);
      return user;
    } catch (e) {
      print(e.toString());
    }



  }

  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }
}

