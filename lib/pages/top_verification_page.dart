import 'package:flutter/material.dart';

class TopVerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Code'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png', // Replace with your logo asset path
                height: 100, // Adjust the height as needed
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Verification Code'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/create-new-password');
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
