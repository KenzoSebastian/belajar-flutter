import './providers/detail_user.dart';

import './pages/detail_page.dart';

import './providers/all_users.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import './pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://uizuzvkmxalsiumnrpcj.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVpenV6dmtteGFsc2l1bW5ycGNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzAyNTI2NzIsImV4cCI6MjA0NTgyODY3Mn0.1lYltORX9daBwU1e7RIbrpBp4gUx35nF-j5bfiYc_wY",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AllUsers>.value(
          value: AllUsers(),
        ),
        ChangeNotifierProvider<DetailUser>.value(
          value: DetailUser(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter Crud',
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
        home: const HomePage(),
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          DetailPage.routeName: (context) => const DetailPage(),
        },
      ),
    );
  }
}
