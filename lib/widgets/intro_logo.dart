import 'package:flutter/material.dart';

class HeartbeatLogo extends StatefulWidget {
  final double width;
  final double height;

  const HeartbeatLogo({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  HeartbeatLogoState createState() => HeartbeatLogoState();
}

class HeartbeatLogoState extends State<HeartbeatLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.tertiary,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/images/logo.png',
          width: widget.width,
          height: widget.height,
        ),
      ),
    );
  }
}
