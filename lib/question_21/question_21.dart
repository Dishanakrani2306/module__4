//Create an application like gmail and display Screens according to
// user selection and design each page with dummy data.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question10(),
    );
  }
}

class question10 extends StatefulWidget {
  const question10({Key? key}) : super(key: key);

  @override
  State<question10> createState() => _question10State();
}

class _question10State extends State<question10> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.black54),
                child: Text(
                  "Gmail",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            ListTile(
              title: Text("All Inbox",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            ListTile(
              title: Text("Starred",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            ListTile(
              title: Text("Snoozed",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            ListTile(
              title: Text("Important",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            ListTile(
              title: Text("Sent",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 450,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius:
                    BorderRadiusDirectional.all(Radius.circular(30))),
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search in Email",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                      prefixIcon: InkWell(
                        onTap: () {
                          _globalKey.currentState?.openDrawer();
                        },
                        child: Icon(Icons.menu, color: Colors.black),
                      ),
                      suffixIcon: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.black,
                        size: 40,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  "Inbox",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.amber),
                  child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TOPS Application",style: TextStyle(color: Colors.white),),
                      Text("Flutter Developers Roles : new job alert",style: TextStyle(color: Colors.white),),
                      Text("Senior Flutter Developers",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("10 jun",style: TextStyle(color: Colors.white),),
                    Icon(Icons.star_border_outlined,color: Colors.white,size: 30,)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.amber),
                  child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TOPS Application",style: TextStyle(color: Colors.white),),
                      Text("Flutter Developers Roles : new job alert",style: TextStyle(color: Colors.white),),
                      Text("Senior Flutter Developers",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("10 jun",style: TextStyle(color: Colors.white),),
                    Icon(Icons.star_border_outlined,color: Colors.white,size: 30,)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.amber),
                  child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TOPS Application",style: TextStyle(color: Colors.white),),
                      Text("Flutter Developers Roles : new job alert",style: TextStyle(color: Colors.white),),
                      Text("Senior Flutter Developers",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("10 jun",style: TextStyle(color: Colors.white),),
                    Icon(Icons.star_border_outlined,color: Colors.white,size: 30,)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.amber),
                  child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TOPS Application",style: TextStyle(color: Colors.white),),
                      Text("Flutter Developers Roles : new job alert",style: TextStyle(color: Colors.white),),
                      Text("Senior Flutter Developers",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("10 jun",style: TextStyle(color: Colors.white),),
                    Icon(Icons.star_border_outlined,color: Colors.white,size: 30,)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.amber),
                  child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TOPS Application",style: TextStyle(color: Colors.white),),
                      Text("Flutter Developers Roles : new job alert",style: TextStyle(color: Colors.white),),
                      Text("Senior Flutter Developers",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("10 jun",style: TextStyle(color: Colors.white),),
                    Icon(Icons.star_border_outlined,color: Colors.white,size: 30,)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      color: Colors.amber),
                  child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TOPS Application",style: TextStyle(color: Colors.white),),
                      Text("Flutter Developers Roles : new job alert",style: TextStyle(color: Colors.white),),
                      Text("Senior Flutter Developers",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("10 jun",style: TextStyle(color: Colors.white),),
                    Icon(Icons.star_border_outlined,color: Colors.white,size: 30,)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}