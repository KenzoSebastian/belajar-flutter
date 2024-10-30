import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  DismissibleWidget({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key('$index'),
              onDismissed: (direction) {
                print("dismissed");
              },
              confirmDismiss: (direction) {
                return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Are you sure?'),
                          content: const Text('This item will be deleted!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text('Yes'),
                            ),
                          ],
                        ));
              },
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(
                  Icons.delete,
                  size: 25,
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: CircleAvatar(
                  child: Center(child: Text((index + 1).toString())),
                ),
                title: Text(faker.person.name()),
                subtitle: Text(faker.lorem.sentence()),
              ),
            );
          }),
    );
  }
}
