//Create an application with bottom navigation with 3 tabs Gallery,
// audio and video and design each page with dummy data

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question11(),
    );
  }
}

class question11 extends StatefulWidget {
  const question11({Key? key}) : super(key: key);

  @override
  State<question11> createState() => _question11State();
}

class _question11State extends State<question11> {

  int current_index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Navigation Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.black,
          onTap: (value) {
            current_index = value;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery), label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: "Video"),
            BottomNavigationBarItem(
                icon: Icon(Icons.audio_file), label: "Audio"),
          ]),
    );
  }
}