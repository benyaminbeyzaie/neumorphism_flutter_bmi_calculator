import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicCard extends Neumorphic {
  final Color color;
  final Widget child;
  final GestureTapCallback onTap;
  NeumorphicCard({this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Neumorphic(
        style: NeumorphicStyle(
          intensity: 10,
          shape: NeumorphicShape.concave,
          color: this.color,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
          depth: -5,
          lightSource: LightSource.topLeft,
        ),
        child: this.child,
      ),
    );
  }
}
