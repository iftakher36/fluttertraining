import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListViewLayout extends StatelessWidget {
  const ListViewLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          itemCount: 100,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (rafi,index){
            return Card(
              child: ListTile(
                leading:SvgPicture.asset("img/yellow.svg"),
                title: const Text("hello"),
                trailing: const Text("hello"),
              ),
            );
          }),
    );
  }
}



