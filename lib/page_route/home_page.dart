import 'package:belajar_flutter/page_route/gallery_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  static const routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const  Center(child: Text("Home Page", style: TextStyle(fontSize: 50),)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, GalleryPage.routeName),
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
