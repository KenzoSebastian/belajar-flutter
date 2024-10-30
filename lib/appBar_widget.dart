/* 
NOTE :
Widget AppBar dibagi menjadi berbagai macam kategori :
1. leading
2. title
3. actions
4. flexibleSpace
5. bottom
*/

import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Colors.amber,
        ),
        leadingWidth: 100,
        title: Container(
          height: 100,
          // width: 35,
          color: Colors.red,
        ),
        // titleSpacing: 0,
        centerTitle: false,
        actions: [
          Container(
            color: Colors.purple,
            width: 50,
          ),
          Container(
            color: Colors.black,
            width: 50,
          ),
          Container(
            color: Colors.purple,
            width: 50,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          )
        ),
        flexibleSpace: Container(
          height: 100,
          color: Colors.grey,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}