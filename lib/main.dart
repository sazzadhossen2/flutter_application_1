import 'package:flutter/material.dart';

void main() {
  runApp(const Myapps());
}

class Myapps extends StatelessWidget {
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
    return const Placeholder();
  }
}
