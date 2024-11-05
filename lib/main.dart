import 'package:toko_ungu/menu.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF6A0DAD), // Ungu kustom
          secondary: const Color(0xFF9B30FF), // Ungu elemen sekunder
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
