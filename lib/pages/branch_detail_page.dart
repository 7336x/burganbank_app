// lib/pages/branch_detail_page.dart

import 'package:flutter/material.dart';

class BranchDetailPage extends StatelessWidget {
  final String branchName;
  final String branchArea;
  final String branchAddress;
  final String openingHours;
  final String branchImage;
  final String contactDetails;
  final String services;

  const BranchDetailPage({
    Key? key,
    required this.branchName,
    required this.branchArea,
    required this.branchAddress,
    required this.openingHours,
    required this.branchImage,
    required this.contactDetails,
    required this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          branchName,
          style: const TextStyle(
            color: Colors.white, // Set the AppBar title color to white
            fontWeight: FontWeight.bold, // Make the font bold
          ),
        ),
        backgroundColor: Colors.blue, // Set the AppBar color
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back button color to white
        ),
      ),
      body: Container(
        color: Colors.white, // Set the background color of the body to white
        padding: const EdgeInsets.all(16.0), // Add some padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(branchImage), // Display branch image
            const SizedBox(height: 16.0), // Spacing
            Text(
              'Branch Area: $branchArea',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0), // Spacing
            Text(
              'Address: ',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              branchAddress,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0), // Spacing
            Text(
              'Opening Hours: ',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              openingHours,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0), // Spacing
            Text(
              'Contact Details: ',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              contactDetails,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0), // Spacing
            Text(
              'Services: ',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              services,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


