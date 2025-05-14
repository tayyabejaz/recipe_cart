import 'package:flutter/material.dart';
import 'package:recipe_cart/routes/app_routes.dart';

class EnterNumberScreen extends StatefulWidget {
  @override
  _EnterNumberScreenState createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
  final TextEditingController _controller = TextEditingController();

  void _onSubmit() {
    final phone = _controller.text.trim();
    if (phone.isNotEmpty) {
      // Proceed to OTP or next screen
      print("Phone entered: $phone");
      Navigator.pushNamed(context, AppRoutes.otpVerification);
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
              Text("Enter your mobile number",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text("Mobile Number", style: TextStyle(color: Colors.grey)),
              Row(
                children: [
                  Image.asset('assets/images/au_flag.jpg', width: 32),
                  SizedBox(width: 8),
                  Text("+61", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter number",
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: _onSubmit,
                  backgroundColor: Colors.deepOrange,
                  child: Icon(Icons.arrow_forward),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
