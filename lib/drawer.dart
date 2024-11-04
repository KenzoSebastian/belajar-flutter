import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Name'),
              accountEmail: Text('Email'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Home'),
              onTap: () => {},
              leading: const Icon(Icons.home),
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () => {},
              leading: const Icon(Icons.settings),
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () => {},
              leading: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: const Center(
          child: Text(
        "Some Text Here",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
