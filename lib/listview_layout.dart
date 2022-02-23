import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewLayout extends StatefulWidget {
  const ListViewLayout({Key? key}) : super(key: key);

  @override
  _ListViewLayoutState createState() => _ListViewLayoutState();
}

class _ListViewLayoutState extends State<ListViewLayout> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          itemCount: 100,
          itemBuilder: (rafi,index){
            return Card(
              child: ListTile(
                leading:Image.asset("img/biriyani.jpg"),
                title: const Text("hello"),
                trailing: const Text("hello"),
              ),
            );
      }),
    );
  }
}
