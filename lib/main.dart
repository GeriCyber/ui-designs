import 'package:flutter/material.dart';
import 'package:ui_desings/screens/basic-design.dart';

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
      initialRoute: 'basic-design',
      routes: {
        'basic-design': ((_) => BasicDesignScreen())
      },
    );
  }
}