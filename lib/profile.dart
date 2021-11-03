import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(

    home:profile (),
  ));
}
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:0.0),
          child: profilereuse(icon:Icons.adjust_sharp,text: "About Us",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:0.0),
          child: profilereuse(icon:Icons.person,text: "Edit Profile",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:0.0),
          child: profilereuse(icon:Icons.notifications,text: "Set Notifications Time",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:0),
          child: profilereuse(icon:Icons.message,text: "Privacy Policy",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:0),
          child: profilereuse(icon:Icons.warning_amber_outlined,text: "FAQs",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:0),
          child: profilereuse(icon:Icons.warning_amber_sharp,text: "Terms and Conditions",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:0),
          child: profilereuse(icon:Icons.logout,text: "Log Out",),
        ),
      ],
    );

  }
}

class profilereuse extends StatelessWidget {
  profilereuse({ this.icon, this.text}
      );
final IconData icon;
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
    border: Border.all(
    color:Color(0xffE6E6E9),
    width: 1,
      ),),
      height: 70,
      width:double.infinity,
      child:Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Icon(icon),
          ),
          Text( text,style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNameRegular',
            fontSize: 15,fontWeight: FontWeight.bold),),
        ],

      ),





    );
  }
}
