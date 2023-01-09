import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.mobile_friendly), 
          label: 'Label1'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_chart), 
          label: 'Label2'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on_outlined), 
          label: 'Label3'
        ),
      ],
    );
  }
}