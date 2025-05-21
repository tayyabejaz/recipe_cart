import 'package:flutter/material.dart';

class CheckoutModal extends StatelessWidget {
  final String totalCost;
  CheckoutModal({required this.totalCost});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Checkout",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Divider(),
          _buildCheckoutOption(
            title: "Delivery Method",
            value: "Home Delivery",
            icon: Icons.local_shipping_outlined,
            onTap: () {
              // Handle Change
            },
          ),
          Divider(),
          _buildCheckoutOption(
            title: "Payment Method",
            value: "Visa **** 1234",
            icon: Icons.credit_card_outlined,
            onTap: () {
              // Handle Change
            },
          ),
          Divider(),
          _buildCheckoutOption(
            title: "Promo Code",
            value: "Apply Promo Code",
            icon: Icons.card_giftcard_outlined,
            onTap: () {
              // Handle Change
            },
          ),
          Divider(),
          _buildTotalCostRow(),
          SizedBox(height: 16),
          _buildPlaceOrderButton(context),
        ],
      ),
    );
  }

  Widget _buildCheckoutOption({
    required String title,
    required String value,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.deepOrange.withOpacity(0.1),
        child: Icon(icon, color: Colors.deepOrange),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: TextButton(
        onPressed: onTap,
        child: Text(
          value,
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTotalCostRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total Cost",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$$totalCost",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceOrderButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          _showOrderPlacedDialog(context);
        },
        child: Text(
          "Place Order",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  void _showOrderPlacedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Order Placed"),
          content: Text("Your order has been placed successfully."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/order-placed');
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
