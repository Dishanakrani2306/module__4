//Create custom toolbar as per given below design Create toolbar with spinner and search functionality

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question1(),
    );
  }
}

class question1 extends StatefulWidget {
  const question1({Key? key}) : super(key: key);

  @override
  State<question1> createState() => _question1State();
}

class _question1State extends State<question1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            height: 50,
            width: 750,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
                color: Colors.white
            ),
            child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Search Here',
                    hintStyle: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontWeight: FontWeight.w600))),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(onTap: () {}, child: Text("New Group")),
                  PopupMenuItem(onTap: () {}, child: Text("Payment")),
                  PopupMenuItem(onTap: () {}, child: Text("My Account")),
                  PopupMenuItem(onTap: () {}, child: Text("Log out"))
                ];
              },
            )
          ]),
    );
  }
}