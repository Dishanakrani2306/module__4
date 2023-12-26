//Write a code to display alert dialog with positive, negative and neutral button and display
// toast respectively user's choice.

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question3(),
    );
  }
}

class question3 extends StatefulWidget {
  const question3({Key? key}) : super(key: key);

  @override
  State<question3> createState() => _question3State();
}

class _question3State extends State<question3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
          title: Text("Alert Dialog Box")),
      body: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.teal.shade800)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      iconColor: Colors.teal.shade800,
                      title: Text("Continue",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      icon: Icon(Icons.double_arrow_outlined),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    Fluttertoast.showToast(
                                      msg: "Continue",
                                      textColor: Colors.black,
                                      fontSize: 25,
                                      gravity: ToastGravity.CENTER_LEFT,

                                    );
                                  });
                                },
                                child: Text(
                                  "Continue",
                                  style: TextStyle(color: Colors.teal.shade800,fontSize: 15),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    Fluttertoast.showToast(
                                      msg: "Yes",
                                      textColor: Colors.black,
                                      fontSize: 25,
                                      gravity: ToastGravity.CENTER_LEFT,

                                    );
                                  });
                                },
                                child: Text(
                                  "Yes",
                                  style: TextStyle(color: Colors.teal.shade800,fontSize: 15),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    Fluttertoast.showToast(
                                      msg: "No",
                                      textColor: Colors.black,
                                      fontSize: 25,
                                      gravity: ToastGravity.CENTER_LEFT,

                                    );
                                  });
                                },
                                child: Text(
                                  "No",
                                  style: TextStyle(color: Colors.teal.shade800,fontSize: 15),
                                ))
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: Text(
                "Are you sure for next ?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ))),
    );
  }
}
