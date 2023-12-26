import 'package:flutter/material.dart';
import 'package:module_4/question_26/activity_1.dart';

class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  State<Activity2> createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Activity1(),));
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Activity 2",style: TextStyle(fontSize: 25,color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
