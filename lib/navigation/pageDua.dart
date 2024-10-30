import 'package:belajar_flutter/navigation/pageSatu.dart';
import 'package:flutter/material.dart';

class NavPageDua extends StatelessWidget {
  const NavPageDua({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Dua'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        // leading: Container(), // untuk menghilangkan icon back
      ),
      body: const Center(
        child: Text(
          'Page Dua',
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const NavPageSatu()),
          );
        },
        child: const Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
