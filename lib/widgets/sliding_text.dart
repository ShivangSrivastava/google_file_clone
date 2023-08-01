import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class SlidingText extends StatefulWidget {
  final String text;
  const SlidingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SlidingText> createState() => _SlidingTextState();
}

class _SlidingTextState extends State<SlidingText> {
  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: widget.text,
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      velocity: 80.0,
      pauseAfterRound: const Duration(seconds: 2),
      accelerationDuration: const Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}
