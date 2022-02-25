import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listview_layout.dart';

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
      body: size>768?Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
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
                          backgroundImage: AssetImage("img/biriyani.jpg")),
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
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Container(
                          height: 100,
                        ),
                      ),
                      ListView.builder(
                          itemCount: 20,
                          shrinkWrap: true,
                          itemBuilder: (rafi,index){
                            return Card(
                              child: ListTile(
                                leading:Image.asset("img/biriyani.jpg"),
                                title: const Text("hello"),
                                trailing: const Text("hello"),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.orangeAccent,
                child: Column(
                  children: [
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
                          prefixIcon:
                              Icon(Icons.lock, color: Color(0xC3000000)),
                        )),
                  ],
                ),
              )),
        ],
      ):Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Container(
                          height: 100,
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orangeAccent,
                  child: Column(
                    children: [
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
                            prefixIcon:
                            Icon(Icons.lock, color: Color(0xC3000000)),
                          )),
                    ],
                  ),
                )),
          ],
        )
    );
  }
}
