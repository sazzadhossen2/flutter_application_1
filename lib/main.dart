import 'package:flutter/material.dart';
import 'package:flutter_application_1/donners.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: DonorListScreen(),
    );
  }
}
