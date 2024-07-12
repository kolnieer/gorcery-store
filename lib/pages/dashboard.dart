import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body:  SafeArea(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/vegetables.jpg'),
                )
              ),
            ),
          ),
        SizedBox(height: 200.0,),
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            ElevatedButton(
            onPressed: (){
      Navigator.pushNamed(context, '/menu');
      },
        child: Text('Go to Menu'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
      ),
        SizedBox(height: 50.0,),
        ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/profile');
          },
          child: Text('Go to profile'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
