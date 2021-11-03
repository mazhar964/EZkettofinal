import 'package:ezketto/recordaddedsuccessfully.dart';
import 'package:ezketto/spleshscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

import 'Login.dart';

void main()
{
  runApp(MaterialApp(

    home:addnotes (),
  ));
}
class addnotes extends StatefulWidget {
  @override
  _addnotesState createState() => _addnotesState();
}

class _addnotesState extends State<addnotes> {
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
                onPressed: (){Navigator.push
                  (
                  context,
                  MaterialPageRoute(
                    builder: (context) => recordaddedsuccessfully(),
                  ),
                );},
              ),
            ]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:100,),
            Text("Add  Notes",style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'fontNameRegular',
                fontSize:32)),
            SizedBox(height:10,),
            Text("Add notes (Optional)",style: TextStyle(
                color: Color(0xff9C9C9E),
                fontFamily: 'fontNameRegular',
                fontSize:19)),
            SizedBox(height:20,),
            Container(

              decoration: BoxDecoration(
                border: Border(

                  left: BorderSide(width: 4.0, color: Color(0xff090909)),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: 'Write here'
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}

