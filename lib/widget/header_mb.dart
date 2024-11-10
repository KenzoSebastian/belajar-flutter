import 'package:flutter/material.dart';

class HeaderMb extends StatelessWidget {
  final String title;
  const HeaderMb({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    );
  }
}
