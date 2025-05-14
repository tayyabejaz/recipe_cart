import 'package:flutter/material.dart';

class CheckoutModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Checkout", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListTile(
            title: Text("Delivery"),
            trailing: Text("Select Method"),
          ),
          ListTile(
            title: Text("Payment"),
            trailing: Text("Select Method"),
          ),
          ListTile(
            title: Text("Total Cost"),
            trailing: Text("\$13.97"),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/order-placed');
            },
            child: Text("Place Order"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
          )
        ],
      ),
    );
  }
}
