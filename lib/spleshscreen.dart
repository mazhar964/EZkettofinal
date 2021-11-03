import 'dart:async';
import 'package:flutter/material.dart';

import 'SignUp.dart';

void main()
{
  runApp(MaterialApp(

    home: SplashScreen(),
  ));

}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => SignUp(),),),);
  }
  Color b = const Color(0xff1D3557);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Image.asset('assets/EzKeto.png',
                width: 119.73,
                height: 119.73,


              ),


            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Text("Test|Record|Track",style: TextStyle(color:Color(0xff707070),fontFamily:'fontNameRegular',fontSize: 24 ,),),
          ),
        ],
      ),
    );
  }
}