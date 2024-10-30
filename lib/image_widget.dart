/* 
note:
jenis provider image:
1. network image
2. asset image
3. file image
4. memory image

kecepatan loading image:
memory image > asset image >  file image > network image
*/

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Image Widget')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          color: Colors.amber,
          child: Image.asset('images/laptop.jpg', fit: BoxFit.cover),
        ),
      )
    );
  }
}
