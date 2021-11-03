import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'add.dart';
import 'colors.dart';

void main()
{
  runApp(MaterialApp(

    home:data (),
  ));
}
class data extends StatefulWidget {
  @override
  _dataState createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home",style: TextStyle(color: Color(0xff000000,),fontFamily: 'fontNameRegular',
        fontSize: 17,),),
        centerTitle: true,
        backgroundColor:Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(10),  // radius of 10
                      // green as background color

                    ),

                    height: 38,

                    width:142,
                    child: Center(
                      child: Text(
                        "Ketone (mmol/l)",
                        style: TextStyle(color: Color(0xffFFFFFF),fontFamily:'fontNameRegular'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Image.asset('assets/Group.png',height: 26,width: 34,),
                ),
                Image.asset('assets/Group2.png',height: 26,width: 34,),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text("October- December",style: TextStyle(color: Color(0xff000000,),fontFamily: 'fontNameRegular',
                        fontSize: 16,),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 08.0,left: 8.0),
                      child: Image.asset('assets/Groupfilter.png',height: 17,width: 48,),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(05),

                ),
              height: 80,
               width: 375,


                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(03),
                          color:Color(0xffFF5175),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [

                               // Text("Test: Ketone mmol/l"),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Test:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: 'Ketone mmol/l',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Date:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: '12/12/2020',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          const Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Result :',
                                    style: TextStyle(
                                        color: Color(0xff9C9C9E),
                                        fontFamily: 'fontNameRegular',
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Ketone mmol/l',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'fontNameRegular',
                                        fontSize:12)),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          const Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Notes::',
                                    style: TextStyle(
                                        color: Color(0xff9C9C9E),
                                        fontFamily: 'fontNameRegular',
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'fontNameRegular',
                                        fontSize:12)),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(


                height: 80,
                width: 375,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(03),
                          color:Color(0xffFF9473),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [

                                // Text("Test: Ketone mmol/l"),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Test:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: 'Ketone mmol/l',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Date:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: '12/12/2020',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          const Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Result :',
                                    style: TextStyle(
                                        color: Color(0xff9C9C9E),
                                        fontFamily: 'fontNameRegular',
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Trace',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'fontNameRegular',
                                        fontSize:12)),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 80,
                width: 375,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(03),
                          color:Color(0xffFF5175),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [

                                // Text("Test: Ketone mmol/l"),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Test:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: 'Ketone mmol/l',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Date:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: '12/12/2020',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          const Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Result :',
                                    style: TextStyle(
                                        color: Color(0xff9C9C9E),
                                        fontFamily: 'fontNameRegular',
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Ketone mmol/l',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'fontNameRegular',
                                        fontSize:12)),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          const Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Notes::',
                                    style: TextStyle(
                                        color: Color(0xff9C9C9E),
                                        fontFamily: 'fontNameRegular',
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'fontNameRegular',
                                        fontSize:12)),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 80,
                width: 375,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(03),
                          color:Color(0xffFF9473),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [

                                // Text("Test: Ketone mmol/l"),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Test:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: 'Ketone mmol/l',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                const Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Date:',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9E),
                                              fontFamily: 'fontNameRegular',
                                              fontSize: 12)),
                                      TextSpan(
                                          text: '12/12/2020',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'fontNameRegular',
                                              fontSize:12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          const Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Result :',
                                    style: TextStyle(
                                        color: Color(0xff9C9C9E),
                                        fontFamily: 'fontNameRegular',
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'Trace',
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'fontNameRegular',
                                        fontSize:12)),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],

      ),

      floatingActionButton: Container(
        height: 75,
        width: 75,
        child: FloatingActionButton(

          onPressed: (){
            Navigator.pushReplacement
              (
              context,
              MaterialPageRoute(
                builder: (context) => add(),
              ),
            );
          },
          child: Icon(Icons.add),

          backgroundColor: Color(0xff9C9C9E),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
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
    );

  }
}
