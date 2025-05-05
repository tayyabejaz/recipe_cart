import 'package:flutter/material.dart';
import 'package:recipe_cart/routes/app_routes.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/signin_image.jpg'),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get Cooking & Shopping", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Sign in to discover recipes and buy what you need"),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(prefixText: "+61 ", border: OutlineInputBorder(), hintText: 'Phone number'),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20),
                Center(child: Text("Or connect with social media", style: TextStyle(color: Colors.grey))),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: Icon(Icons.g_mobiledata),
                  label: Text("Continue with Google"),
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.enterNumber),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[700]),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  icon: Icon(Icons.facebook),
                  label: Text("Continue with Facebook"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
