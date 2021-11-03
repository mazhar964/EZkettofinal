import 'package:ezketto/recordaddedsuccessfully.dart';
import 'package:ezketto/spleshscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'addnotes.dart';
import 'colors.dart';

import 'Login.dart';

void main()
{
  runApp(MaterialApp(

    home:add (),
  ));
}
bool isVisible =false;
class add extends StatefulWidget {

  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    FlatButton
      (child: Text("Cancle"),
    onPressed: (){},
    ),
      FlatButton(child: Text("Next"),
      onPressed: (){
        Navigator.push
          (
          context,
          MaterialPageRoute(
            builder: (context) => addnotes(),
          ),
        );
      },
      ),
    ]),
    ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:100,),
            Text("Record",style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'fontNameRegular',
                fontSize:32)),
            Text("Ketone (mmol/l)",style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'fontNameRegular',
                fontSize:32)),
            Text("Select from below to record your results ",style: TextStyle(
                color: Color(0xff9C9C9E),
                fontFamily: 'fontNameRegular',

                fontSize:19)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Reuse(text: "Nagtive",color:(0xffFFB17B),


              ),
              Reuse(text: "Trace 0.5",color:(0xffFF9473),onTap:(){
                setState(() {
                  isVisible =!isVisible;

     /*   child: const Icon(
       Icons.check,
  color: Colors.white,
  //size: 5.0,
);*/


                 //st"); Text("te

                });

              }),
              Reuse(text: "Small 1.5",color:(0xffFF5175),

              ),
              Reuse(text: "Moderate 4.0",color:(0xffD90053),),
              Reuse(text: "Large 8.0",color:(0xff940046),),
              Reuse(text: "Large 16",color:(0xff690036),),
            ],)
          ],
        ),
      ),

      );



  }
}

class Reuse extends StatelessWidget {
  Reuse(  {
   this.text,
   this.color,
    this.onTap});
final text;
final color;
final  onTap;


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: onTap,
        child: Container(

          height: 47,
          width: 47,
          child: Visibility(
            visible: isVisible,

              maintainState: true,
            child: Icon(
              Icons.check,
              color: Colors.white,

              //size: 5.0,
            )
          ),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
               color:Color(color),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Text(text,style: TextStyle(
          color: Color(0xff000000),
          fontFamily: 'fontNameRegular',

          fontSize:11)),
    ],);
  }
}
