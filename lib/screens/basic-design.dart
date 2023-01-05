import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/backdrop.PNG'),
          ),
          const Title(),
          const ActionSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('Nulla incididunt eu minim ut et fugiat exercitation dolore incididunt laborum nostrud incididunt et. Aute do aute dolor veniam do fugiat nostrud cupidatat velit sunt deserunt amet cupidatat. Anim laborum deserunt adipisicing in enim nisi magna amet dolore cupidatat ipsum culpa officia.'))
        ]
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black54),
                ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ActionButton(icon: Icons.call, text: 'Call'),
          ActionButton(icon: Icons.add_location_alt_outlined, text: 'Route'),
          ActionButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const ActionButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}