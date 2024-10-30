import 'package:belajar_flutter/page_route/photo_page.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const routeName = "/galleryPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Gallery Page",
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("<<<Back", style: TextStyle(fontSize: 25),),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PhotoPage.routeName);
                },
                child: const Text("Next>>>", style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
