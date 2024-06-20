import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white60,
    appBar: AppBar(
      title: Text('User Profile'),
      backgroundColor:  Colors.cyan,
      centerTitle: true,
    ),
      body: const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'Anne Nicole Tolentino',
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'YEAR',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '4TH YEAR',
            style:  TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25.0,
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'EMAIL',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'tolentinoannenicol@gmail.com',
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    ),
  ),
));



