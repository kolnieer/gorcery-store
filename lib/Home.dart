import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor:  Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/nikol.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 70.0,
                  color: Colors.black,
                  thickness: 3.0,

                ),
                Row(
                  children: [
                    Icon(
                        Icons.person_2,
                        color: Colors.white70,
                        ),
                    SizedBox(width: 3.0,),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
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
                  '$year Year',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        year +=1;
                      });
                    },
                    child: Text('Add Year'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
