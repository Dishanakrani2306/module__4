//Write a code to display edit, view, delete options with context menu
//in listview and also perform respective operation on user's choice

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question9(),
    );
  }
}

class question9 extends StatefulWidget {
  const question9({Key? key}) : super(key: key);

  @override
  State<question9> createState() => _question9State();
}

class _question9State extends State<question9> {
  final TextEditingController name_controller = TextEditingController();

  String Enter_name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Context Menu'),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: Text("Edit")),
                  PopupMenuItem(
                      child: Text("View")),
                  PopupMenuItem(
                      child: Text("Update")),
                ];
              },)
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadiusDirectional.all(Radius.circular(10)),
                ),
                child: TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                      hintText: "Enter Your Name ",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              Enter_name = name_controller.text.toString();
                            });
                          },
                          icon: Icon(
                            Icons.navigate_next_sharp,
                            color: Colors.black,
                          )
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your value is ==> ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(Enter_name,style: TextStyle(fontSize: 18),),

              ],
            )
          ],
        ));
  }
}
