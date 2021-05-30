import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar:  AppBar(title: Text('Welcome to Flutter')),
          backgroundColor: Color(0xFF343A40),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.people, color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Username',
                    hintText: 'Enter Username'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.remove_red_eye, color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Login'), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue)))
            ]),
          ),
        ));
  }
}
