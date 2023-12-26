// /Create an application with Navigation Drawer with 3 tabs Gallery,
// audio and video and design each page with dummy data.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question12(),
    );
  }
}

class question12 extends StatefulWidget {
  const question12({Key? key}) : super(key: key);

  @override
  State<question12> createState() => _question12State();
}

class _question12State extends State<question12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                )

            ),
            ListTile(
              onTap: (){},
              title: Text("Gallery",style: TextStyle(fontSize: 20,color: Colors.black)),
            ),
            ListTile(
              onTap: (){},
              title: Text("Video",style: TextStyle(fontSize: 20,color: Colors.black)),
            ),
            ListTile(
              onTap: (){},
              title: Text("Audio",style: TextStyle(fontSize: 20,color: Colors.black)),
            )
          ],

        ),

      ),

      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text('Navigation Drawer',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}