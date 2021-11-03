import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:http/http.dart' as http;
//import 'dart:convert' as JSON


import 'email_login.dart';
import 'home1.dart';
import 'main.dart';
import 'colors.dart';

void main()
{
  runApp(MaterialApp(

    home:Login (),
  ));
}
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
var loading = false;
class _LoginState extends State<Login> {
  void _logInWithFacebook() async {
    setState(() { loading = true; });

    try {
      final facebookLoginResult = await FacebookAuth.instance.login();
      final userData = await FacebookAuth.instance.getUserData();

      final facebookAuthCredential = FacebookAuthProvider.credential(facebookLoginResult.accessToken.token);
      await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);

      await FirebaseFirestore.instance.collection('users').add({
        'email': userData['email'],
        'imageUrl': userData['picture']['data']['url'],
        'name': userData['name'],
      });

     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => home1()),
             (route) => false);


    } on FirebaseAuthException catch (e) {
      var content = '';
      switch (e.code) {
        case 'account-exists-with-different-credential':
          content = 'This account exists with a different sign in provider';
          break;
        case 'invalid-credential':
          content = 'Unknown error has occurred';
          break;
        case 'operation-not-allowed':
          content = 'This operation is not allowed';
          break;
        case 'user-disabled':
          content = 'The user you tried to log into is disabled';
          break;
        case 'user-not-found':
          content = 'The user you tried to log into was not found';
          break;
      }

      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text('Log in with facebook failed'),
        content: Text(content),
        actions: [TextButton(onPressed: () {
          Navigator.of(context).pop();

        }, child: Text('Ok'))],
      ));

    } finally {
      setState(() { loading = false; });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login",style: TextStyle(color: Color(0xff000000,),fontFamily: 'fontNameRegular',
        fontSize: 17,),),
        centerTitle: true,
        backgroundColor:Colors.white,
      ),
      body: Column(
        children: <Widget>[
          //SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(top: 50.0,bottom: 30),
            child: Container(
              child: Image.asset('assets/EzKeto.png',
                width: 117.73,
                height: 117.73,


              ),

            ),
          ),
        //  SizedBox(height: 25),
          Text(
            "Welcome to EZ Keto",
            style: TextStyle(
              color: Color(0xff707070),

              fontFamily: 'fontNameRegular',
              fontSize: 22,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Track your results with EZ Keto",
            style: TextStyle(

              fontFamily: 'fontNameRegular',
              fontSize: 16,
            ),
          ),
          SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(

              height: 70,
              width:double.infinity,
              child: FlatButton(
                color:button,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ImageIcon(

                        AssetImage("assets/Iconmetro.png"),
                        color: Color(0xFFFFFFFF),

                      ),
                    ),
                    Text(
                      "Sign in with Apple",
                      style: TextStyle(color: Color(0xffFFFFFF),fontFamily:'fontNameRegular',fontSize: 14),
                    ),
                  ],
                ),
                onPressed: () {

                  Navigator.push
                    (
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },

              ),
            ),
          ),
          //SizedBox(height:40),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(

              height: 70,
              width:double.infinity,
              child: FlatButton(
                color:Color(0xff475993),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: ImageIcon(
                        AssetImage("assets/facebook.png"),
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      "Sign in with Facebook",
                      style: TextStyle(color:Color(0xffFFFFFF),fontFamily:'fontNameRegular',fontSize: 14),
                    ),
                  ],
                ),
                onPressed: () {

                  _logInWithFacebook();

                },

              ),
            ),
          ),
          //SizedBox(height:40),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    border: Border.all(
      color: Color(0xffED3900),
      // color: Colors.red,
    width: 1,
    )// radius of 10

    ),
              height: 70,
              width:double.infinity,

              child: FlatButton(
                color:Color(0xffFFFFFF),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(

                        AssetImage("assets/Icon.png"),
                        color: Color(0xffED3900),
                      ),
                    ),
                    Text(
                      "Sign in with Email",
                      style: TextStyle(color:Color(0xff000000),fontFamily:'fontNameRegular',fontSize: 14),
                    ),
                  ],
                ),
                onPressed: () {

                  Navigator.pushReplacement
                    (
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailLogin(),
                    ),
                  );
                },

              ),
            ),
          ),
        ],

      ),
    );
  }
}
