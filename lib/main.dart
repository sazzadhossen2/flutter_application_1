import 'package:flutter/material.dart';
import 'package:flutter_application_1/donners.dart';

void main() {
  runApp(const Myapps());
}

class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: DonorListScreen(),
    );
  }
}
