//Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question8(),
    );
  }
}

class question8 extends StatefulWidget {
  const question8({Key? key}) : super(key: key);

  @override
  State<question8> createState() => _question8State();
}

class _question8State extends State<question8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
        Text('Profile and Log Out', style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.person_outline_sharp, color: Colors.white,size: 40),
        actions: [
          Icon(Icons.logout_outlined,size: 40)
        ],
      ),
    );
  }
}