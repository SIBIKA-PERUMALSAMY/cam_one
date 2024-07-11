import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center the logo at the top of the column
            Center(
              child: Image.asset(
                'assets/images/logo.png', // Path to the local logo asset
                height: 100, // Adjust the height as needed
                errorBuilder: (context, error, stackTrace) {
                  return Text(
                      'Error loading logo'); // Display error message if the image fails to load
                },
              ),
            ),
            SizedBox(
                height: 20), // Add some spacing between the logo and the text
            Center(
              child: Text(
                'Welcome to the Camera Monitoring Home Page',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
