import 'package:flutter/material.dart';





class LoginPage extends StatefulWidget {
  static const String id ='loginpage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left:50.0,right: 50,top:2,bottom: 2),
            child: Column(
              children: <Widget>[
//                  SizedBox(
//                    height: 10.0,
//                  ),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),

                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(

                      hintText: 'Enter your email',

                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black54, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
//                  SizedBox(
//                    height: 48.0,
//                  ),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),

                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (value) {


                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black54, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      minWidth: 200,
                      height: 42.0,
                      elevation: 5.0,
                      color: Colors.black54,
                      onPressed: () {

                      },
                      child: const Text('LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
