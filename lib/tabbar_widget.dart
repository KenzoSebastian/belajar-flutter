import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  TabbarWidget({super.key});

  final myTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.tab_sharp),
      child: Text("Tab 1"),
    ),
    const Tab(
      icon: Icon(Icons.tab_sharp),
      child: Text("Tab 2"),
    ),
    const Tab(
      icon: Icon(Icons.tab_sharp),
      child: Text("Tab 3"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 2, // default tab index
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Widget Tab Bar'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: myTabs,
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.normal),
              indicator: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ))),
            )),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Tab 1',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Center(
              child: Text(
                'Tab 2',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Center(
              child: Text(
                'Tab 3',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
