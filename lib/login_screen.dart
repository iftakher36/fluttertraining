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
  List name = ["Farhan", "Shahinur", "Rafi", "Hakim", "Riyad","Riyad","Riyad","Riyad","Riyad","Riyad","Riyad"];

  @override
  Widget build(BuildContext context) {
    double sizes = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(change),
          leading: IconButton(
            icon: const Icon(Icons.access_alarm_sharp),
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
        body: Column(
          children: [
            Expanded(
              child: Scrollbar(
                isAlwaysShown: true,
                child: GridView.builder(
                    itemCount: name.length,
                    gridDelegate:
                         const SliverGridDelegateWithMaxCrossAxisExtent(
                           maxCrossAxisExtent: 200,
                           mainAxisSpacing: 30,
                           childAspectRatio: 1
                            ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Text(name[index]),
                      );
                    }),
              ),
            ),
         /*   Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  color: Colors.black,
                  child: const Text("hello"),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Container(
                        color: Colors.white,
                        child: const Text("hello"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Container(
                        color: Colors.blue,
                        child: const Text("hello"),
                      ),
                    ),
                  ),
                ],
              ),
            )*/
          ],
        ));
  }
}
