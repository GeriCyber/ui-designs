import 'package:flutter/material.dart';
import 'package:ui_desings/screens/basic_design.dart';
import 'package:ui_desings/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: _HomeScreen()
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI designs', 
      initialRoute: 'scroll-design',
      routes: {
        'basic-design': ((_) => BasicDesignScreen()),
        'scroll-design': ((_) => const ScrollScreen())
      },
    );
  }
}