// lib/pages/branch_list_page.dart

import 'package:flutter/material.dart';
import 'branch_detail_page.dart'; // Import the BranchDetailPage

class BranchListPage extends StatelessWidget {
  BranchListPage({Key? key}) : super(key: key);

  // Sample data for branches
  final List<Map<String, String>> branches = [
    {'name': 'Kuwait City Branch', 'area': 'Kuwait City'},
    {'name': 'Salmiya Branch', 'area': 'Salmiya'},
    {'name': 'Hawally Branch', 'area': 'Hawally'},
    {'name': 'Fahaheel Branch', 'area': 'Fahaheel'},
    {'name': 'Farwaniya Branch', 'area': 'Farwaniya'},
    // Add more branches as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Burgan Bank Branches',
          style: TextStyle(
            color: Colors.white, // Set AppBar title color to white
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
        child: ListView.builder(
          itemCount: branches.length, // Number of branches
          itemBuilder: (context, index) {
            return Card(
              color: Colors.grey[200], // Set the card color to light gray
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Card margin
              child: ListTile(
                title: Text(
                  branches[index]['name']!, // Branch name
                  style: const TextStyle(fontWeight: FontWeight.bold), // Bold font for branch name
                ),
                subtitle: Text(branches[index]['area']!), // Branch area
                onTap: () {
                  // Debug print statement to confirm the tap event
                  print("Tapped on ${branches[index]['name']}"); // Add this line

                  // Navigate to the BranchDetailPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BranchDetailPage(
                        branchName: branches[index]['name']!,
                        branchArea: branches[index]['area']!,
                        branchAddress: '123 Main St, ${branches[index]['area']}', // Example address
                        openingHours: 'Saturday to Thursday: 8 AM - 4 PM', // Example opening hours
                        branchImage: 'images/${branches[index]['name']!.toLowerCase().replaceAll(' ', '_')}_branch.jpeg', // Dynamically set image path
                        contactDetails: 'Phone: +965 1234 5678', // Example contact details
                        services: 'Personal Banking, Business Financing', // Example services
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}





