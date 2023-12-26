//create a Phone call App when user first time open the app it will
// automatically generate one dialog which has two option allow, deny if
// click on allow permission is grant in settings.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: question13(),
    );
  }
}

class question13 extends StatefulWidget {
  const question13({Key? key}) : super(key: key);

  @override
  State<question13> createState() => _question13State();
}

class _question13State extends State<question13> {

  Future<void> _showDialog(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Grant Permissions"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Click here ---> "),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Allow access"))
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _showDialog(context),
      builder: (context, snapshot) => Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
          elevation: 0,
        ),
      ),);
  }
}
