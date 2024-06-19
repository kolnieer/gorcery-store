import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text('Grocery Store'),
        ),
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Image.network('https://pbs.twimg.com/media/FZfokV4VEAACAGn?format=jpg&name=small'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        child: Icon(
         Icons.add,
          color: Colors.pink[200],
         ),
       ),
      ),
    ),
  );
}

