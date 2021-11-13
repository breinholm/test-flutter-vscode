import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedButton(
          width: 120,
          height: 120,
          duration: 40,
          shadowDegree: ShadowDegree.dark,
          color: Colors.blueGrey,
          child: const Text(
            '1',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
