import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/bottom_tabs.dart';
import '../widgets/card_item.dart';
import '../widgets/grid_title.dart';

class GridDesign extends StatelessWidget {
  const GridDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _Body(),
        ],
      ),
      bottomNavigationBar: BottomTabs(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridTitle(),
          CardItem()
        ],
      ),
    );
  }
}