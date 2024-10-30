import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  MappingList({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Ahmad",
      "Age": 20,
      "FavColor": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "Name": "Budi",
      "Age": 25,
      "FavColor": ["Yellow", "Black", "White"]
    },
    {
      "Name": "Ahmad",
      "Age": 20,
      "FavColor": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "Name": "Budi",
      "Age": 25,
      "FavColor": ["Yellow", "Black", "White"]
    },
    {
      "Name": "Ahmad",
      "Age": 20,
      "FavColor": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "Name": "Budi",
      "Age": 25,
      "FavColor": ["Yellow", "Black", "White"]
    },
    {
      "Name": "Ahmad",
      "Age": 20,
      "FavColor": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "Name": "Budi",
      "Age": 25,
      "FavColor": ["Yellow", "Black", "White"]
    },
    {
      "Name": "Ahmad",
      "Age": 20,
      "FavColor": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "Name": "Budi",
      "Age": 25,
      "FavColor": ["Yellow", "Black", "White"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Mapping List')),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: myList.map((data) {
          List myColor = data["FavColor"];
          return Card(
            margin: const EdgeInsets.all(20),
            color: Colors.black.withOpacity(0.1),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.account_circle, size: 50,),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("name: ${data['Name']}"),
                        Text("age : ${data['Age']}"),
                      ],
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: myColor.map((color) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8,
                        ),
                        padding: const EdgeInsets.all(10),
                        color: Colors.amber,
                        child: Text(color),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
