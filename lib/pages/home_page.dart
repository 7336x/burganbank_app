// lib/pages/home_page.dart

import 'package:flutter/material.dart';
import 'branch_list_page.dart'; // Import the Branch List Page

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center( // Center the column horizontally
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align the content at the top
          crossAxisAlignment: CrossAxisAlignment.center, // Center the logo horizontally
          children: [
            // Add space between the top of the screen and the logo
            SizedBox(height: 50), // Adjust this to control the space at the top

            // 1. Burgan Bank Logo - centered and bigger
            Image.asset(
              'assets/images/burgan_logo.jpg',
              width: 350, // Increase the size of the logo
              height: 350, // Increase the size of the logo
            ),

            // 2. Bank Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0), // Add some padding
              child: Text(
                'Burgan Bank: Your trusted financial partner, offering innovative solutions for personal banking, business financing, and investment opportunities.                 Your Way to Start',
                textAlign: TextAlign.center, // Center the text
                style: TextStyle(
                  fontSize: 16, // Set the font size
                  color: Color(0xFF333333), // Set dark gray color for the description
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
              ),
            ),

            // 3. Explore Branches Button
            SizedBox(height: 100), // Increased space between the description and the button
            ElevatedButton(
              onPressed: () {
                // Navigate to Branch List Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BranchListPage()),
                );
              },
              child: Text('Explore Branches'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set the text color to white
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20), // Increase button padding
                textStyle: TextStyle(fontSize: 18), // Button text style
              ),
            ),
          ],
        ),
      ),
    );
  }
}












