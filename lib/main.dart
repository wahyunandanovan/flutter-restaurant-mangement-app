import 'package:flutter/material.dart';
import 'package:food_app/bottom_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomTabbar(),
      },
    );
  }
}
