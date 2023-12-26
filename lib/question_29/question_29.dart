//Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Question29()
    );
  }
}

class Question29 extends StatefulWidget {
  const Question29({super.key});

  @override
  State<Question29> createState() => _Question29State();
}

class _Question29State extends State<Question29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call and Send SMS URL Launcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              launch('tel:+91 89765 87632');
            }, child: Text("Make a Call")),
            ElevatedButton(onPressed: () {
          launch('sms: +91 89765 87632?body=Hi Welcome to Flutter');
            }, child: Text("Send SMS"))
          ],
        ),
      ),
    );
  }
}
