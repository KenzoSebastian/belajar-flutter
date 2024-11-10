import 'package:belajar_flutter/providers/detail_user.dart';
import 'package:belajar_flutter/widget/header_mb.dart';

import '../widget/text_field.dart';
import './detail_page.dart';
import '../providers/all_users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(args.toString()),
          duration: const Duration(seconds: 3),
        ));
      });
    }
    Provider.of<AllUsers>(context, listen: false).getDatabaseUsers();
  }

  @override
  Widget build(BuildContext context) {
    final dataUsers = Provider.of<AllUsers>(context, listen: false);
    final getAllUser = dataUsers.users;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Dashboard'),
        leading: Container(),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              dataUsers.getDatabaseUsers();
            },
          ),
        ],
      ),
      body: Consumer<AllUsers>(builder: (context, value, child) {
        return ListView.builder(
          itemCount: getAllUser.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, DetailPage.routeName,
                  arguments: value.users[index]['id']);
            },
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(value.users[index]['nama']),
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => _formInsertUser(context));
        },
      ),
    );
  }

  Widget _formInsertUser(BuildContext context) {
    final TextEditingController nameController = TextEditingController(),
        emailController = TextEditingController(),
        addressController = TextEditingController(),
        phoneController = TextEditingController();

    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const HeaderMb(title: 'Insert User'),
          TextFieldCustom(controller: nameController, placeholder: 'Name'),
          TextFieldCustom(controller: emailController, placeholder: 'Email'),
          TextFieldCustom(controller: addressController, placeholder: 'Alamat'),
          TextFieldCustom(controller: phoneController, placeholder: 'No Telp'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                Provider.of<DetailUser>(context, listen: false).addNewUser({
                  'nama': nameController.text,
                  'email': emailController.text,
                  'alamat': addressController.text,
                  'no_hp': int.parse(phoneController.text)
                });
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Data inserted'),
                    duration: Duration(seconds: 2),
                  ),
                );
              })
        ]),
      ),
    );
  }
}
