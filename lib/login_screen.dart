import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _Hello() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("hello")));
  }

  String change = "Hello Programmers";
  int counter = 0;
  double values = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(change),
          leading: IconButton(
            icon: const Icon(Icons.access_alarm_sharp),
            onPressed: () {
              _Hello();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.access_alarm_sharp),
              onPressed: () {
                counter++;
                values++;
                change = "hello" + counter.toString();
                setState(() {});
              },
            ),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Row(
            children: [],
          ),
        ));
  }
}
