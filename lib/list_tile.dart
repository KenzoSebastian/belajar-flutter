import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List Tile')),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: const Icon(Icons.account_circle),
                title: const Text('This is title'),
                subtitle: const Text('This is subtitle'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              const Divider(color: Colors.black),
            ],
          );
        }
      ),
    );
  }
}
