import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second/grid_layout.dart';

import 'listview_layout.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  void _Hello() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("hello")));
  }

  String change = "Hello Programmers";
  int counter = 0;
  double size=0.0;
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
    size=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(change),
        leading: size>768?null:IconButton(
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
          size>768?Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const CircleAvatar(
                        radius: 51,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage:NetworkImage("https://en.wikipedia.org/wiki/Aang#/media/File:Avatar_Aang.png")),
                      ),
                      const TextField(
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
                      const TextField(
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
                            prefixIcon:
                                Icon(Icons.lock, color: Color(0xC3000000)),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: const BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF000000)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Log In",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ):Container(),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      child: SizedBox(
                        height: 100,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 31,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:NetworkImage("https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png",scale: 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Flexible(child: ListViewLayout())
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.orangeAccent,
                child: const GridLayout(),
              )),
        ],
      )
    );
  }
}
