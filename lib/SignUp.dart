import 'package:ezketto/spleshscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'aut.dart';
import 'colors.dart';
import 'Login.dart';
import 'main.dart';
import 'package:email_validator/email_validator.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:SplashScreen (),
  ));
}
class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _key = GlobalKey<FormState>();
  String _password = '';
  String _confirmPassword = '';
  // here is new test code for branche 1

  final AuthenticationService _auth = AuthenticationService();

  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Signup",style: TextStyle(color: Color(0xff070707,),fontFamily: 'fontNameRegular',
        fontSize: 17,),),
          centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(

        padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailContoller,
                validator: ( value) {

                  if (value.isEmpty) {
                    return 'Email cannot be empty';

                  }
                  if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                    return 'Please a valid Email';
                  }
                  return null;

                },
                decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email'
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                  controller: _passwordController,
                  obscureText: true,

                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password cannot be empty';
                    } else{
                      if (value.trim().length < 8) {
                        return 'Userpassword must be at least 8 characters in length';
                      }
                    }
                     // return null;
                  },


                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password'
              ),
                onChanged: (value) => _password = value,
              ),
              SizedBox(height: 20),
              TextFormField(

                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password cannot be empty';
                    } else{
                      if (value.trim().length < 8) {
                        return 'Userpassword must be at least 8 characters in length';
                      }
                      else{
                        if (value != _password) {
                          return 'Confimation password does not match the entered password';
                        }

                        return null;
                      }
                    }
                     // return null;
                  },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirm Password'
              ),
                onChanged: (value) => _confirmPassword = value,
              ),
              SizedBox(height: 25),
              Container(

                height: 60,
                width:double.infinity,
                child: FlatButton(
                  color:button,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white,fontFamily:'fontNameRegular'),
                  ),
                  onPressed: () {
                   print("1!!!!!!!!!outside!!!!!!!!!!!!");

                   if (_key.currentState.validate()) {
                    //print("1!!!!!!!!!!!!!!!!!!!!!");
                     createUser();
                    }


                 /*  Navigator.push
                      (
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );*/
                  },

                ),
              ),
              SizedBox(height: 30),
               Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Already a member? ',
                        style: TextStyle(
                            color: Color(0xffB1B1B1),
                            fontFamily: 'fontNameRegular',
                            fontSize: 13)),
                    TextSpan(
                        text: 'Sign In',

                      recognizer: new TapGestureRecognizer()..onTap = () => {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Login()),
                        )
                      },

                        style: TextStyle(
                            color: Color(0xff1D3557),
                            fontFamily: 'fontNamebold',
                            fontSize: 13),

                    ),

                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }



  void createUser() async{
//print(_emailContoller.text);
//print(_passwordController.text);

    dynamic  result =await _auth.creatNewUser( _emailContoller.text,_passwordController.text, context);
    if(result==null)
      {
        print("email not correct");

      }else{
      print(result.toString());
    }
  }
}
