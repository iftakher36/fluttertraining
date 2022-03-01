import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          SingleChildScrollView(
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
                        backgroundImage: NetworkImage(
                            "https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png",
                            scale: 1)),
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
                        prefixIcon: Icon(Icons.lock, color: Color(0xC3000000)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          )),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF000000)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const DetailsScreen()));
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
