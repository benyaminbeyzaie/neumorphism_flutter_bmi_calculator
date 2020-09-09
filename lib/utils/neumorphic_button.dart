import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BenNeumorphicButton extends Neumorphic {
  final Widget child;
  final Function onTap;
  final IconData icon;
  BenNeumorphicButton({this.child, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      child: Icon(this.icon),
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
        color: Colors.amberAccent[200],
        depth: 10,
      ),
      onPressed: this.onTap,
    );
  }
}
