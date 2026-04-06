import 'package:flutter/material.dart';
import 'loadingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'c1',
      debugShowCheckedModeBanner: false,
      home: const LoadingPage(),
    );
  }
}
