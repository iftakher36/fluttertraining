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
  List name = [
    "Farhan",
    "Shahinur",
    "Rafi",
    "Hakim",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad",
    "Riyad"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(change),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _Hello;
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
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Column(
                children: const [
                  SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 51,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage("https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png",scale: 1)
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.blue),
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      labelText: "UserName",
                      focusColor: Colors.black,
                      labelStyle: TextStyle(
                        color: Color(0xFF0f0f0f),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.supervised_user_circle,
                          color: Color(0xC3000000)),
                    ),
                  ),
                  TextField(
                      style: TextStyle(color: Colors.blue),
                      cursorColor: Colors.blue,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        focusColor: Colors.black,
                        labelStyle: TextStyle(
                          color: Color(0xFF0f0f0f),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        prefixIcon: Icon(Icons.lock,
                            color: Color(0xC3000000)),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                color: Colors.blue,
                child: Column(
            children: const [
                TextField(
                  style: TextStyle(color: Colors.blue),
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    labelText: "UserName",
                    focusColor: Colors.black,
                    labelStyle: TextStyle(
                      color: Color(0xFF0f0f0f),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    prefixIcon: Icon(Icons.supervised_user_circle,
                        color: Color(0xC3000000)),
                  ),
                ),
                TextField(
                    style: TextStyle(color: Colors.blue),
                    cursorColor: Colors.blue,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      focusColor: Colors.black,
                      labelStyle: TextStyle(
                        color: Color(0xFF0f0f0f),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.lock,
                          color: Color(0xC3000000)),
                    )),
            ],
          ),
              )),
          Expanded(child: Container(
            color: Colors.orangeAccent,
            child: Column(
              children:  [
                TextField(
                  style: TextStyle(color: Colors.blue),
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    labelText: "UserName",
                    focusColor: Colors.black,
                    labelStyle: TextStyle(
                      color: Color(0xFF0f0f0f),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    prefixIcon: Icon(Icons.supervised_user_circle,
                        color: Color(0xC3000000)),
                  ),
                ),
                TextField(
                    style: TextStyle(color: Colors.blue),
                    cursorColor: Colors.blue,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      focusColor: Colors.black,
                      labelStyle: TextStyle(
                        color: Color(0xFF0f0f0f),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.lock,
                          color: Color(0xC3000000)),
                    )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
