import 'package:flutter/material.dart';

void runApp(Myapps myapps) {}

class Myapps {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApps(),
    );
  }
}

class HomeApps extends StatelessWidget {
  const HomeApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
