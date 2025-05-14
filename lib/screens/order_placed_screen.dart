import 'package:flutter/material.dart';

class OrderPlacedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 80, color: Colors.deepOrange),
            SizedBox(height: 20),
            Text("Your order has been placed.", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text("Back to Home"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            )
          ],
        ),
      ),
    );
  }
}
