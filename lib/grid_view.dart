import 'dart:math';

import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  final List<Container> myList = List.generate(
    90,
    (index) => Container(
      // width: 150, // ga ngaruh
      // height: 50, // ga ngaruh
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), 
          Random().nextInt(256)),
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // body: GridView(
      //   padding: const EdgeInsets.all(10),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //     childAspectRatio: 4 / 3,
      //   ),
      //   children: myList,
      // ),

      // body: GridView.count(
      //   padding: const EdgeInsets.all(10),
      //   crossAxisCount: 3,
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   childAspectRatio: 4 / 3,
      //   children: myList,
      // )

      body : GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 3,
        ),
        itemCount: myList.length,
        itemBuilder: (context, index) => myList[index],
      )
    );
  }
}
