import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Minim incididunt tempor deserunt',
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.white)
            ),
            SizedBox(height: 40),
            Text('Minim incididunt tempor deserunt deserunt deserunt',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white)
            ),
          ],
        ),
      ),
    );
  }
}