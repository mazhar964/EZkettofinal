
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'addnotes.dart';
import 'colors.dart';



void main()
{
  runApp(MaterialApp(

    home:recordaddedsuccessfully (),
  ));
}
class recordaddedsuccessfully extends StatefulWidget {
  @override
  _recordaddedsuccessfullyState createState() => _recordaddedsuccessfullyState();
}

class _recordaddedsuccessfullyState extends State<recordaddedsuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
       // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            child: Center(
              child: Image.asset('assets/Iconcheck.png',
              ),

            ),
          ),
          SizedBox(height:20,),
          Text("Thank You!",style: TextStyle(
              color: Color(0xffE2000F),
              fontFamily: 'fontNameRegular',
              fontSize:38)),
          SizedBox(height:5,),
          Text("Records added successfully ",style: TextStyle(
              color: Color(0xff9C9C9E),
              fontFamily: 'fontNameRegular',
              fontSize:21)),
          SizedBox(height:5,),
          Container(
            height: 55,
            width: 312,
            child: FlatButton(
              color:b,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "View Records",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {

              },

            ),
          ),
        ],
      ),

    );



  }
}

