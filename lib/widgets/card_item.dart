import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _Item(color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _Item(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _Item(color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainment'),
            _Item(color: Colors.purple, icon: Icons.food_bank_rounded, text: 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _Item(color: Colors.blue, icon: Icons.laptop, text: 'Electronic'),
            _Item(color: Colors.green, icon: Icons.car_rental_outlined, text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _Item(color: Colors.pinkAccent, icon: Icons.health_and_safety, text: 'Health'),
            _Item(color: Colors.purpleAccent, icon: Icons.back_hand_sharp, text: 'Security'),
          ]
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _Item({
    required this.icon, 
    required this.color, 
    required this.text
  });
  
  @override
  Widget build(BuildContext context) {
    return ItemBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18))
        ]
      )
    );
  }
}

class ItemBackground extends StatelessWidget {
  final Widget child;
  const ItemBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}