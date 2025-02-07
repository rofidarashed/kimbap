import 'package:flutter/material.dart';
import 'package:kimbap/screens/home_page.dart';

void main() {
  runApp(const KimbapApp());
}

class KimbapApp extends StatelessWidget {
  const KimbapApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
