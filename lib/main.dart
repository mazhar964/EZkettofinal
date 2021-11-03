import 'package:ezketto/add.dart';
import 'package:ezketto/home1.dart';
import 'package:ezketto/profile.dart';
import 'package:ezketto/recordaddedsuccessfully.dart';
import 'package:ezketto/spleshscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'colors.dart';
import 'data.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(

    home:Home (),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  List<Widget> _screens = [home1(),profile() ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home",style: TextStyle(color: Color(0xff000000,),fontFamily: 'fontNameRegular',
        fontSize: 17,),),
        centerTitle: true,
        backgroundColor:Colors.white,
      ),
      //body:

     floatingActionButton: Container(
       height: 65,
       width: 65,
       child: FloatingActionButton(

          onPressed: (){},
          child: Icon(Icons.add),

          backgroundColor: Color(0xff9C9C9E),
        ),
     ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(


        onTap: (int i) {
          setState(() => _selectedIndex = i);
        },// this will be set when a new tab is tapped
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,color: Color(0xff000000),),

            title: new Text('Home',style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'fontNamebold',
                fontSize: 9),),
          ),


          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile',style: TextStyle(
    color: Color(0xff9C9C9E),
    fontFamily: 'fontNamebold',
    fontSize: 9)),


          )
        ],
      ),
body: _screens[_selectedIndex],

    );

  }
}
