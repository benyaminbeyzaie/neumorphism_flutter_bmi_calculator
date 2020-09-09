import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  final IconData icon;
  final String text;
  CardContent({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 90.0,
          color: Colors.grey[700],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            this.text,
            style: textStyle,
          ),
        )
      ],
    );
  }
}
