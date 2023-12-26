//Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: question4(),
    );
  }
}

class question4 extends StatefulWidget {
  const question4({Key? key}) : super(key: key);

  @override
  State<question4> createState() => _question4State();
}

class _question4State extends State<question4> {

  List<String> citylist = [
    "Rajkot",
    "Ahemdabad",
    "Gandhinagar",
    "Bharuch",
    "Vadodara"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Alert Dialog',
            style: TextStyle(color: Colors.black, fontSize: 23)),
      ),
      body: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.orangeAccent)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("City of Gujrat",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.orangeAccent)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
                      content: Container(
                        width: double.minPositive,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: citylist.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(citylist[index]),
                              onTap: () {
                                showDialog(context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.orangeAccent,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20))),
                                      title: Text(citylist[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                      content: Text("City of Gujrat"),
                                    );
                                  },);
                              },
                            );
                          },),
                      ),
                    );
                  },);
              },
              child: Text(
                "Click",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ))),
    );
  }
}