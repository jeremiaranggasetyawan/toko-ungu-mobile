import 'package:toko_ungu/screens/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Ungu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFAB47BC), // Ungu kustom
          secondary: const Color(0xFFBA68C8), // Ungu elemen sekunder
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
