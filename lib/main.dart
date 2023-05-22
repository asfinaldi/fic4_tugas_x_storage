import 'package:flutter/material.dart';

import 'home_page.dart';
import 'lesson/home_page_fic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  HomePageFic(),
    );
  }
}
