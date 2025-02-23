import 'package:flutter/material.dart';
import 'package:flutter_application_1/donners.dart';
import 'package:flutter_application_1/main.dart';

class DonorDetailsScreen extends StatelessWidget {
  final Donor donor;

  DonorDetailsScreen({required this.donor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(donor.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${donor.name}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Blood Group: ${donor.bloodGroup}"),
            SizedBox(height: 10),
            Text("Address: ${donor.address}"),
            SizedBox(height: 10),
            Text("Contact: ${donor.contact}"),
            SizedBox(height: 10),
            Text("Email: ${donor.email}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Here you could add functionality like calling the donor or navigating to a donation page
              },
              child: Text("Contact Donor"),
            ),
          ],
        ),
      ),
    );
  }
}
