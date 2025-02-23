import 'package:flutter/material.dart';
import 'package:flutter_application_1/donner_details.dart';

class DonorListScreen extends StatelessWidget {
  final List<Donor> donors = [
    Donor(
      name: "John Doe",
      bloodGroup: "A+",
      address: "123 Main Street, City, Country",
      contact: "123-456-7890",
      email: "john.doe@email.com",
    ),
    Donor(
      name: "Jane Smith",
      bloodGroup: "B+",
      address: "456 Oak Avenue, City, Country",
      contact: "098-765-4321",
      email: "jane.smith@email.com",
    ),
    // Add more donors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blood Donors")),
      body: ListView.builder(
        itemCount: donors.length,
        itemBuilder: (context, index) {
          final donor = donors[index];
          return ListTile(
            title: Text(donor.name),
            subtitle: Text(donor.bloodGroup),
            trailing: Text(donor.address),
            onTap: () {
              // Navigate to the donor details screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonorDetailsScreen(donor: donor),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Donor {
  final String name;
  final String bloodGroup;
  final String address;
  final String contact;
  final String email;

  Donor({
    required this.name,
    required this.bloodGroup,
    required this.address,
    required this.contact,
    required this.email,
  });
}
