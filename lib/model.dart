import 'dart:math';
import 'package:belajar_flutter/Model/product.dart';
import 'package:faker/faker.dart' hide Image;
import 'package:flutter/material.dart';

class ModelFlutter extends StatelessWidget {
  ModelFlutter({super.key});
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> listProduct = List.generate(
        100,
        (index) => Product(
              name: faker.food.restaurant(),
              imageList: 'https://picsum.photos/id/$index/200/300',
              price: "Rp. ${Random().nextInt(10000) + 1000}",
              description: faker.lorem.sentence(),
              category: faker.lorem.word(),
            ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Model Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: listProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            footer: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.green.withOpacity(0.8),
              child: Column(
                children: [
                  Text(
                    listProduct[index].name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(listProduct[index].price),
                  Text(listProduct[index].description, maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            child: Image.network(
              listProduct[index].imageList,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
