import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Question28()
    );
  }
}

class Question28 extends StatefulWidget {
  const Question28({super.key});

  @override
  State<Question28> createState() => _Question28State();
}

class _Question28State extends State<Question28> {

  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Two Numbers"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: num1Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Number',
                hintText: 'Enter First Number'
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.number,
              controller: num2Controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Second Number',
                  hintText: 'Enter Second Number'
              ),
            ),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) + int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: Text("Addition")),
                    SizedBox(height: 20,width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) - int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: Text("Subtraction")),
                  ],
                ),
                SizedBox(height: 20,width: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) * int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: Text("Multiplication")),
                    SizedBox(height: 20,width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int sum = int.parse(num1Controller.text) % int.parse(num2Controller.text);
                            result = sum.toString();
                          });
                        }, child: Text("Division")),
                  ],
                ),


              ],
            ),
            SizedBox(height: 30,),
            Text("Result : $result")
          ],
        ),
      ),
    );
  }
}

