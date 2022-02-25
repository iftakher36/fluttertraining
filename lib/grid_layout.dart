import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
          childAspectRatio: 1

        ),
        itemBuilder: (ctx, index) {
          return const Card(
            elevation: 5,
            child: Center(child: Text("Menus",style: TextStyle(fontSize: 10,color: Colors.black),)),
          );
        });
  }
}
