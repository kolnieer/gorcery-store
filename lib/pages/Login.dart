import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:untitled2/services/User.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool _obscure = true;
  IconData _obscureIcon = Icons.visibility_off;

  Widget buttonContent = Text('Log in');

  Widget loadingDisplay = CircularProgressIndicator();

  Future<bool> login(User user)async{
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8080/api/v1/auth/login'),
      headers: <String, String>{
        'Content-Type' : 'application/json; charset=UTF-8',
      },
      body:  jsonEncode(<String, dynamic>{
        'usernameOrEmail' : user.email,
        'password' : user.password
      })
    );
    if(response.statusCode == 200){
      return true;
    }
    return false;
    //print(response.body);


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/236x/23/e7/7f/23e77fb348aaa66c285f4ac811e17ed7.jpg'),
            fit: BoxFit.cover,
          ),
        ),


      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text( 'Log in your account',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  fontSize: 24.5
                ),
              ),
              SizedBox(height: 30.0,),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      maxLength: 40,
                      decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70.0)

                        ),
                      ),

                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'please provide a email';
                        }
                        if(value.length < 2){
                          return 'wrong email';
                        }
                        return null;
                      },
                      onSaved: (value){
                        email = value!;
                      },
                    ),
                    SizedBox(height: 30.0,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'please input your passowrd!';
                        }
                        if (value.length < 8){
                          return '8 Characters nga daw behh';
                        }
                        if (value.length > 20){
                          return 'bawase man bai!!';
                        }
                        return null;

                      },
                      onSaved: (value){
                        password = value!;
                      },
                    ),
                    SizedBox(height: 25.0,),
                    ElevatedButton(
                        onPressed: (){
                         if(formKey.currentState!.validate()){
                           formKey.currentState!.save();
                           User user = User(
                             username: '',
                             email: email,
                             password: password,
                           );
                           /*if(login(user)){
                             Navigator.pushReplacementNamed(context, '/dashboard');
                           }*/
                           setState(() {
                             buttonContent = FutureBuilder(
                                 future: login(user),
                                 builder: (context, snapshots){
                                   if(snapshots.connectionState == ConnectionState.waiting){
                                     return loadingDisplay;
                                   }
                                   if(snapshots.hasData){

                                   }
                                   return Text('Log in');
                                 }
                             );
                           });
                           Navigator.pushReplacementNamed(context, '/dashboard');

                         }
                        },
                        child: buttonContent,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                        ),

                    ),
                    Divider(
                      height: 55.0,
                      color: Colors.black,
                      thickness: 1.0,

                    ),
                    SizedBox(height: 10.0),
                    Column(
                      children: [
                        Text('Sign in with',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 40.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ElevatedButton(onPressed: (){},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:<Widget> [
                                    Icon(Icons.facebook),
                                    SizedBox(width: 5.0,),
                                    Text ('Login with Facebook',),
                                  ],
                                ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:<Widget> [
                        ElevatedButton(onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.g_mobiledata),
                                SizedBox(width: 5.0,),
                                Text('Login with Google',),
                              ],
                            ) ,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.black,
                              ),

                        ),
                      ],
                    ),
                    SizedBox(height: 40.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Dont have an account?',
                              style: TextStyle(
                                color: Colors.black
                              ),
                        ),
                        SizedBox(width: 5.0,),
                        InkWell(
                          child: Text(
                            'Sign up here',
                            style: TextStyle(
                              color: Colors.pinkAccent
                            ),
                          ),
                          onTap: () => Navigator.popAndPushNamed(context, '/Signup'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
