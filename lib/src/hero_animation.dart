import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA07A),
        title: const Text('Hero Animation'),
      ),
      body: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Hero(tag: 'cat', child: Image.asset('assets/cat.jpg')),
        ),
        title: const Text('Cat'),
        subtitle: const Text('Photo'),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const HeroAnimationDetail())),
      ),
    );
  }
}

class HeroAnimationDetail extends StatelessWidget {
  const HeroAnimationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA07A),
        title: const Text('Hero Animation'),
        elevation: 0,
      ),
      body: ClipRRect(
        child: Hero(
          tag: 'cat',
          child: Image.asset('assets/cat.jpg'),
        ),
      ),
    );
  }
}
