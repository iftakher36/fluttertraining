import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {
  const ListViewLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
        itemCount: 100,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (rafi,index){
          return Card(
            child: ListTile(
              leading:Image.asset("img/biriyani.jpg"),
              title: const Text("hello"),
              trailing: const Text("hello"),
            ),
          );
        });
  }
}



