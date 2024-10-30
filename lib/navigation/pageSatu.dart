
/* 
Note: 
pushReplacement: hapus halaman sebelumnya dan pindah ke halaman baru
*/

import 'package:belajar_flutter/navigation/pageDua.dart';
import 'package:flutter/material.dart';

class NavPageSatu extends StatelessWidget {
  const NavPageSatu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Satu'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Container(), // untuk menghilangkan icon back
      ),
      body: const Center(
        child: Text(
          'Page Satu',
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const NavPageDua()),
          );
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
