import '../providers/detail_user.dart';
import 'package:flutter/material.dart';

class SizeboxDataUser extends StatelessWidget {
  final DetailUser value;
  const SizeboxDataUser({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Detail User',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _textData('nama', 'Guest User'),
                  _textData('email', 'guest@example.com'),
                  _textData('alamat', 'Jl. xxxxx'),
                  _textData('no Telp', '08xxxxx'),
                ],
              ),
            ),
          ],
        ));
  }

  Text _textData(String field, String placeholder, {String extra = 'no_hp'}) {
    return Text(
      "${field.toUpperCase()} : ${value.detailUser[field == 'no Telp' ? extra : field] ?? placeholder} ",
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}
