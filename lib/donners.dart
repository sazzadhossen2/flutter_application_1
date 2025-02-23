// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/donner_details.dart';

// class DonorListScreen extends StatelessWidget {
//   final List<Donor> donors = [
//     Donor(
//       name: "John Doe",
//       bloodGroup: "A+",
//       address: "123 Main Street, City, Country",
//       contact: "123-456-7890",
//       email: "john.doe@email.com",
//     ),
//     Donor(
//       name: "Jane Smith",
//       bloodGroup: "B+",
//       address: "456 Oak Avenue, City, Country",
//       contact: "098-765-4321",
//       email: "jane.smith@email.com",
//     ),
//     Donor(
//       name: "Michael Johnson",
//       bloodGroup: "O+",
//       address: "789 Maple Road, City, Country",
//       contact: "234-567-8901",
//       email: "michael.johnson@email.com",
//     ),
//     Donor(
//       name: "Emily Davis",
//       bloodGroup: "AB+",
//       address: "321 Birch Lane, City, Country",
//       contact: "345-678-9012",
//       email: "emily.davis@email.com",
//     ),
//     Donor(
//       name: "William Brown",
//       bloodGroup: "O-",
//       address: "654 Pine Street, City, Country",
//       contact: "456-789-0123",
//       email: "william.brown@email.com",
//     ),
//     Donor(
//       name: "Olivia Wilson",
//       bloodGroup: "A-",
//       address: "987 Cedar Drive, City, Country",
//       contact: "567-890-1234",
//       email: "olivia.wilson@email.com",
//     ),
//     Donor(
//       name: "James Taylor",
//       bloodGroup: "B-",
//       address: "654 Elm Boulevard, City, Country",
//       contact: "678-901-2345",
//       email: "james.taylor@email.com",
//     ),
//     Donor(
//       name: "Sophia Moore",
//       bloodGroup: "AB-",
//       address: "321 Oak Drive, City, Country",
//       contact: "789-012-3456",
//       email: "sophia.moore@email.com",
//     ),
//     Donor(
//       name: "Lucas Anderson",
//       bloodGroup: "A+",
//       address: "123 Birch Road, City, Country",
//       contact: "890-123-4567",
//       email: "lucas.anderson@email.com",
//     ),
//     Donor(
//       name: "Mia Martinez",
//       bloodGroup: "O+",
//       address: "456 Pine Street, City, Country",
//       contact: "901-234-5678",
//       email: "mia.martinez@email.com",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Blood Donors")),
//       body:
//       ListView.builder(
//         itemCount: donors.length,
//         itemBuilder: (context, index) {
//           final donor = donors[index];
//           return ListTile(
//             title: Text(donor.name),
//             subtitle: Text(donor.bloodGroup),
//             trailing: Text(donor.address),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DonorDetailsScreen(donor: donor),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class Donor {
//   final String name;
//   final String bloodGroup;
//   final String address;
//   final String contact;
//   final String email;

//   Donor({
//     required this.name,
//     required this.bloodGroup,
//     required this.address,
//     required this.contact,
//     required this.email,
//   });
// }

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
    Donor(
      name: "Michael Johnson",
      bloodGroup: "O+",
      address: "789 Maple Road, City, Country",
      contact: "234-567-8901",
      email: "michael.johnson@email.com",
    ),
    Donor(
      name: "Emily Davis",
      bloodGroup: "AB+",
      address: "321 Birch Lane, City, Country",
      contact: "345-678-9012",
      email: "emily.davis@email.com",
    ),
    Donor(
      name: "William Brown",
      bloodGroup: "O-",
      address: "654 Pine Street, City, Country",
      contact: "456-789-0123",
      email: "william.brown@email.com",
    ),
    Donor(
      name: "Olivia Wilson",
      bloodGroup: "A-",
      address: "987 Cedar Drive, City, Country",
      contact: "567-890-1234",
      email: "olivia.wilson@email.com",
    ),
    Donor(
      name: "James Taylor",
      bloodGroup: "B-",
      address: "654 Elm Boulevard, City, Country",
      contact: "678-901-2345",
      email: "james.taylor@email.com",
    ),
    Donor(
      name: "Sophia Moore",
      bloodGroup: "AB-",
      address: "321 Oak Drive, City, Country",
      contact: "789-012-3456",
      email: "sophia.moore@email.com",
    ),
    Donor(
      name: "Lucas Anderson",
      bloodGroup: "A+",
      address: "123 Birch Road, City, Country",
      contact: "890-123-4567",
      email: "lucas.anderson@email.com",
    ),
    Donor(
      name: "Mia Martinez",
      bloodGroup: "O+",
      address: "456 Pine Street, City, Country",
      contact: "901-234-5678",
      email: "mia.martinez@email.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blood Donors")),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: donors.length,
        itemBuilder: (context, index) {
          final donor = donors[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonorDetailsScreen(donor: donor),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      donor.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      donor.bloodGroup,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      donor.address,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
