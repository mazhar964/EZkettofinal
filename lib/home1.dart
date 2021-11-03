import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'colors.dart';
import 'data.dart';

import 'data.dart';
void main()
{
  runApp(MaterialApp(

    home:home1(),
  ));
}
class home1 extends StatefulWidget {
  @override
  _home1State createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(


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
                  padding: const EdgeInsets.only(left:90.0),
                  child: Image.asset('assets/Group.png',),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 02.0,),
                  child: FlatButton

                    (
                    child: Image.asset('assets/Group2.png',)
                    , onPressed: (){
                    Navigator.push
                      (
                      context,
                      MaterialPageRoute(
                        builder: (context) => data(),
                      ),
                    );
                  },
                  ),
                ),
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
                height: 300,
                width:400,
                color: Color(0xffFFFFFF),
                padding: EdgeInsets.all(10),
                //  width: double.infinity,
                child: LineChart(LineChartData(
                    borderData: FlBorderData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                            FlSpot(12/09, 0.0),
                            FlSpot(22/09,0.0),
                            FlSpot(02/10, 0.5),
                            FlSpot(12/10, 0.5),
                            FlSpot(22/10, 1.5),
                            FlSpot(02/11, 4.0),
                            FlSpot(12/12, 8.0),

                          ]
                      )
                    ]
                ),
                ),
              ),

            ],
          ),

        ],

      ),


    );
  }
}
