import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_desings/screens/basic_design.dart';
import 'package:ui_desings/screens/grid_design.dart';
import 'package:ui_desings/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const _HomeScreen()
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI designs', 
      initialRoute: 'grid-design',
      routes: {
        'basic-design': ((_) => BasicDesignScreen()),
        'scroll-design': ((_) => const ScrollScreen()),
        'grid-design': ((_) => const GridDesign()),
      },
    );
  }
}