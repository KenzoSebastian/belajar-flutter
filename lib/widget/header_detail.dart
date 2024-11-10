import '../providers/detail_user.dart';
import 'package:flutter/material.dart';

class HeaderDetail extends StatelessWidget {
  final DetailUser value;
  const HeaderDetail({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color.fromARGB(255, 153, 209, 255),
      child: Row(children: [
        const CircleAvatar(
          radius: 40,
          child: Icon(
            Icons.person,
            size: 60,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.detailUser['nama'] ?? 'Guest User',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            Text(value.detailUser['email'] ?? 'guest@example.com',
                style: const TextStyle(
                  fontSize: 17,
                )),
          ],
        )
      ]),
    );
  }
}
