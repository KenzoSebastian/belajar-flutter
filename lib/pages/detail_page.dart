import '../widget/header_mb.dart';

import '../widget/text_field.dart';
import './home_page.dart';
import '../providers/all_users.dart';
import '../widget/sizeBox_data_user.dart';
import '../widget/header_detail.dart';
import 'package:provider/provider.dart';
import '../providers/detail_user.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail-page';
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final id = ModalRoute.of(context)!.settings.arguments as int;
    Provider.of<DetailUser>(context, listen: false).setDetailUser(id);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<DetailUser>(context, listen: false);
    final id = ModalRoute.of(context)!.settings.arguments as int;
    user.setDetailUser(id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Consumer<DetailUser>(
        builder: (context, value, child) {
          return Column(
            children: [
              HeaderDetail(value: value),
              const SizedBox(
                height: 20,
              ),
              SizeboxDataUser(value: value),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) =>
                                _formEditUser(context, value));
                      },
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit')),
                  TextButton.icon(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                _alertDialogDelete(context, value));
                      },
                      icon: const Icon(Icons.delete),
                      label: const Text('Delete')),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  AlertDialog _alertDialogDelete(BuildContext context, DetailUser value) =>
      AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to delete this user?'),
        actions: <Widget>[
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              value.deleteUser(value.detailUser['id']);
              Provider.of<AllUsers>(context, listen: false).getDatabaseUsers();
              Navigator.pushReplacementNamed(context, HomePage.routeName,
                  arguments: 'data deleted');
            },
          ),
        ],
      );

  SizedBox _formEditUser(BuildContext context, DetailUser value) {
    final TextEditingController nameController =
            TextEditingController(text: value.detailUser['nama']),
        emailController =
            TextEditingController(text: value.detailUser['email']),
        addressController =
            TextEditingController(text: value.detailUser['alamat']),
        phoneController =
            TextEditingController(text: value.detailUser['no_hp'].toString());
    return SizedBox(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            const HeaderMb(title: 'Edit User'),
            TextFieldCustom(controller: nameController, placeholder: 'Name'),
            TextFieldCustom(controller: emailController, placeholder: 'Email'),
            TextFieldCustom(controller: addressController, placeholder: 'Alamat'),
            TextFieldCustom(controller: phoneController, placeholder: 'No Telp'),
            TextButton(
                child: const Text('Edit'),
                onPressed: () {
                  value.editUser({
                    'id': value.detailUser['id'],
                    'nama': nameController.text,
                    'email': emailController.text,
                    'alamat': addressController.text,
                    'no_hp': int.parse(phoneController.text)
                  });
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Data updated'),
                      duration:
                          Duration(seconds: 2),
                    ),
                  );
                })
          ]),
        ));
  }
}
