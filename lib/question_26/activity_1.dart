//Write a code to redirect user from one activity to another when button click.

import 'package:flutter/material.dart';
import 'package:module_4/question_26/activity_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Activity1());
  }
}

class Activity1 extends StatefulWidget {
  const Activity1({super.key});

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Activity 1",
                style: TextStyle(fontSize: 25, color: Colors.black)),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 130,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Activity2(),));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
