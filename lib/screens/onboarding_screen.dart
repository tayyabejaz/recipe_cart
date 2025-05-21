import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../widgets/common_button.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/onboarding_image.jpg', fit: BoxFit.cover)),
          Container(
            color: Colors.deepOrange,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello, Food Lover!", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Discover recipes, watch videos, and shop ingredients in one tap.", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 30),
                CommonButton(
                  text: "Get Started",
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.entryScreen),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
