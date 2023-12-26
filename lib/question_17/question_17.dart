//open alert dialog when user want to exit from the application

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question5(),
    );
  }
}

class question5 extends StatefulWidget {
  const question5({Key? key}) : super(key: key);

  @override
  State<question5> createState() => _question5State();
}

class _question5State extends State<question5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert dialog'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Are you sure want to Logout ?"),
                    content: Row(
                      children: [
                        Text("yes"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("No")
                      ],
                    ),
                  );
                },);
            },
            child: Text("Log out")),
      ),

    );
  }
}
