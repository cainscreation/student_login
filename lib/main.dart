import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:student_login/fetchdata.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterBase',
      home: Scaffold(
//        backgroundColor:Color(0xFF141414),
        backgroundColor:Colors.white,


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[LoginButton(), UserProfile()],
          ),
        ),
      ),

    routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    Fetchdata.id: (context) => Fetchdata(),}
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  UserProfileState createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  Map<String, dynamic> _profile;
  bool _loading = false;

  @override
  initState() {
    super.initState();
    authService.profile.listen((state) => setState(() => _profile = state));

    authService.loading.listen((state) => setState(() => _loading = state));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Center(child: Container(
            child: Text(''),
        ),
        ),

      ]),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: authService.user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(children: <Widget>[
                MaterialButton(
                  elevation: 8.0,
                  minWidth: 200.0,
                  height: 35,
                onPressed: () => authService.signOut(),
                color: Colors.blueGrey,
                textColor: Colors.white,
                child: Text('Signout'),
              ),
                MaterialButton(

                  elevation: 8.0,
                  minWidth: 200.0,
                  height: 35,
                  onPressed:(){
                    Navigator.pushNamed(context, Fetchdata.id);
                  } ,
                  color: Colors.white,
                  textColor: Colors.black87,
                  child: Text('Check Data'),
                ),
              ],
              ),


            );
          } else {
            return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Welcome to Student detail App',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  MaterialButton(
                    elevation: 8.0,
                    minWidth: 200.0,
                    height: 35,
//                    color: Color(0xFF000000),
                  onPressed: () => authService.googleSignIn(),
          color: Colors.red,
          textColor: Colors.white,
          child: Text('Login with Google'),
          ),



                ],

            );
          }
        });
  }
}
