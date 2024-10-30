import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ExtractWidget extends StatelessWidget {
  ExtractWidget({super.key});

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Extract Widget')),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ChatItem(
                imageUrl: 'https://picsum.photos/id/$index/200/300',
                title: faker.person.name(),
                subtitle: faker.lorem.sentence(),
              );
            }));
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text('10:00 PM'),
    );
  }
}
