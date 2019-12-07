import 'package:flutter/material.dart';

class Fetchdata extends StatefulWidget {
  static const String id ='fetchdata';

  @override
  _FetchdataState createState() => _FetchdataState();
}

class _FetchdataState extends State<Fetchdata> {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor:Color(0xFF141414),
       body: SafeArea(
         child: Column(
           children: <Widget>[

             Padding(
               padding:EdgeInsets.all(30.0),
               child: Center(
               child: Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage('assets/dummy.png'),
                       fit: BoxFit.fill
                   ),

               ),),
           ),
             ),

              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      constraints: BoxConstraints.expand(height: 70.0),
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
//                        shadows: source.boxShadow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        color: Colors.black87,
                      ),

                      child: Column(children:<Widget>[

                      Text('Student Name',
                    style: TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    ),
                      Text('Fetched from database',
                        style: TextStyle(
                          color: Colors.white,

                          fontSize: 18.0,
                        ),
                      ),
                    ]),),
                  ),
                ),
              ),
             Center(
               child: Padding(
                 padding: const EdgeInsets.all(15.0),

                 child: Container(

                   constraints: BoxConstraints.expand(height: 70.0),
                   padding: EdgeInsets.all(10),
                   decoration: ShapeDecoration(

                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(10.0),
                       ),
                     ),
                     color: Colors.black87,   ),
                   child: Column(children:<Widget>[
                     Text('Class Teacher Name',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18.0,
                       ),
                     ),
                     Text('Fetched from database',
                       style: TextStyle(
                         color: Colors.white,

                         fontSize: 18.0,
                       ),
                     ),
                   ]),),
               ),
             ),

             Center(
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Container(
                   constraints: BoxConstraints.expand(height: 70.0),
                   padding: EdgeInsets.all(10),
                   decoration: ShapeDecoration(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(10.0),
                       ),
                     ),
                     color: Colors.black87,   ),
                   child: Column(children:<Widget>[
                     Text('Subject Name',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18.0,
                       ),
                     ),
                     Text('Fetched from database',
                       style: TextStyle(
                         color: Colors.white,

                         fontSize: 18.0,
                       ),
                     ),
                   ]),),
               ),
             ),
             Center(
               child: Padding(
                 padding: const EdgeInsets.all(15.0),

                 child: Container(

                   constraints: BoxConstraints.expand(height: 70.0),
                   padding: EdgeInsets.all(10),
                   decoration: ShapeDecoration(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(
                           Radius.circular(10.0),
                         ),
                       ),
                    color: Colors.black87,   ),

                   child: Column(children:<Widget>[
                     Text('Attendence Record',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18.0,
                       ),
                     ),
                     Text('Fetched from database',
                       style: TextStyle(
                         color: Colors.white,

                         fontSize: 18.0,
                       ),
                     ),
                   ]),),
               ),
             ),







           ],
         ),

       ),
     );



  }}