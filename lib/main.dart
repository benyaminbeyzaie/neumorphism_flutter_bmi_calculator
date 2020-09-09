import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Colors.grey[200],
        lightSource: LightSource.topLeft,
        depth: 0,
      ),
      debugShowCheckedModeBanner: false,
      title: 'BMI Caculator',
      home: MyHomePage(),
    );
  }
}
