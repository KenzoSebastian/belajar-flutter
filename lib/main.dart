import './provider/counter.dart';
import 'package:provider/provider.dart';

import './homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Belajar Flutter Provider',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider.value(
            // create: (context) => Counter(),
            value: Counter(),
            child: const HomePage()
            ));
  }
}
