import 'package:flutter/material.dart';

class FadingAnimation extends StatefulWidget {
  const FadingAnimation({super.key, required this.child});

  final Widget child;

  @override
  State<FadingAnimation> createState() => _FadingAnimationState();
}

class _FadingAnimationState extends State<FadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> opacity;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    opacity = Tween(begin: .4, end: 1.0).animate(_controller);
    _controller
      ..forward()
      ..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return Opacity(
          opacity: opacity.value,
          child: widget.child,
        );
      },
      animation: _controller,
    );
  }
}
