//Write a code to display simple alert dialog with title, description and icon when button is clicked.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question2(),
    );
  }
}

class question2 extends StatefulWidget {
  const question2({Key? key}) : super(key: key);

  @override
  State<question2> createState() => _question2State();
}

class _question2State extends State<question2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Simple Alert Dialog Box",),
      ),
      body: Center(
          child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purpleAccent)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Setting"),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your phone battery is low",style: TextStyle(fontSize: 15),),
                            Icon(Icons.charging_station_outlined,color: Colors.redAccent,)
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: Text("Click here",style: TextStyle(color: Colors.white,fontSize: 20,),))),
    );
  }
}

