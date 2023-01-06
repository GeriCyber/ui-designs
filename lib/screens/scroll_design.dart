import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color.fromRGBO(91, 146, 179, 1),
        Color.fromRGBO(40, 48, 147, 1)
      ]
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            FirstScreen(),
            SecondScreen()
          ],
        ),
      )
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        MainContent()
      ],
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      color: const Color.fromRGBO(40, 48, 147, 1),
      child: const Image(image: AssetImage('assets/bg.JPG'))
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('14°', style: textStyle), 
          Text('Hola mundo', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(40, 48, 147, 1),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 30))
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromRGBO(91, 146, 179, 1),
            shape: StadiumBorder()
          ),
        ),
      )
    );
  }
}