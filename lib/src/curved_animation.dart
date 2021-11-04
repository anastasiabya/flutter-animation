import 'package:flutter/material.dart';

class CurvedAnimation extends StatefulWidget {
  const CurvedAnimation({Key? key}) : super(key: key);

  @override
  State<CurvedAnimation> createState() => _CurvedAnimationState();
}

class _CurvedAnimationState extends State<CurvedAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      seconds: 2,
    ),
  )..repeat(
      reverse: true,
    );
  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          _animatedWidget(),
          const SizedBox(
            height: 80,
          ),
          Text(
            '+2°',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 70,
            ),
          )
        ],
      ),
    );
  }

  Widget _animatedWidget() {
    return SlideTransition(
      position: _animation,
      child: Image.asset('assets/cloud.png'),
    );
  }
}
