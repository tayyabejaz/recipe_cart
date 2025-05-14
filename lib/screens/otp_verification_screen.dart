import 'package:flutter/material.dart';
import 'package:recipe_cart/routes/app_routes.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpController = TextEditingController();

  void _verifyOtp() {
    final otp = _otpController.text.trim();
    if (otp.length == 4) {
      print("OTP Entered: $otp");
      // Navigate to Home or next screen
      Navigator.pushNamed(context, AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              SizedBox(height: 20),
              Text("Enter your 4-digit code",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              TextField(
                controller: _otpController,
                maxLength: 4,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "----"),
                style: TextStyle(fontSize: 24, letterSpacing: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {}, // Resend code logic
                  child: Text("Resend Code", style: TextStyle(color: Colors.red)),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: _verifyOtp,
                  backgroundColor: Colors.deepOrange,
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
