import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'home1.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  String _password = '';
  String value = '';
  final _key = GlobalKey<FormState>();


  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isLoggingIn = false;

  _logIn() async {
    setState(() {
      isLoggingIn = true;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => home1()));

    } on FirebaseAuthException catch (e) {
      var message = '';

      switch (e.code) {
        case 'invalid-email':
          message = 'The email you entered was invalid';
          break;
        case 'user-disabled':
          message = 'The user you tried to log into is disabled';
          break;
        case 'user-not-found':
          message = 'The user you tried to log into was not found';
          break;
        case 'wrong-password':
          message = 'Incorrect password';
          break;
      }

      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text('Log in failed'),
          content: Text(message),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();

            }, child: Text('Ok')),
          ],
        );
      });
    } finally {
      setState(() {
        isLoggingIn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(

        child: Column(
          key:_key,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email', style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            )),

            const SizedBox(height: 5),

            Text('Log in', style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            )),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextFormField(
                controller: _emailController,
                validator: ( value) {

                  if (value.isEmpty) {
                    return 'Email cannot be empty';

                  }
                  if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                    return 'Please a valid Email';
                  }
                  return null;

                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Password cannot be empty';
                  } else{
                    if (value.trim().length < 8) {
                      return 'Username must be at least 8 characters in length';
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
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),

            if (!isLoggingIn)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    _logIn();
                  }, child: Text('Log in')),
                ),
              ),

            if (isLoggingIn) ...[
              const SizedBox(height: 16),
              Center(child: CircularProgressIndicator()),
            ]
          ],
        ),
      ),
    );
  }
}
