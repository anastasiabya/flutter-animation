import 'package:animation/src/curved_animation.dart' as ca;
import 'package:animation/src/discount_card.dart';
import 'package:animation/src/flip_animation.dart';
import 'package:animation/src/hero_animation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA07A),
        title: const Text('Animation'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Flip animation'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FlipAnimation())),
          ),
          ListTile(
            title: const Text('Discount card'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DiscountCard())),
          ),
          ListTile(
            title: const Text('Curved Animation'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ca.CurvedAnimation())),
          ),
          ListTile(
            title: const Text('Hero Animation'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HeroAnimation())),
          ),
        ],
      ),
    );
  }
}
