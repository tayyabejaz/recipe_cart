import 'package:flutter/material.dart';
import 'package:recipe_cart/screens/checkout_modal.dart';

class MyCartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {"name": "Bell Pepper Red", "quantity": 1, "price": 4.99},
    {"name": "Egg Chicken Red", "quantity": 1, "price": 1.99},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart")),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network("https://via.placeholder.com/50"),
            title: Text(cartItems[index]['name']),
            subtitle: Text("${cartItems[index]['quantity']} x \$${cartItems[index]['price']}"),
            trailing: Text("\$${cartItems[index]['price']}"),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => CheckoutModal(),
              );
            },
            child: Text("Go to Checkout"),
          ),
        ),
      ),
    );
  }
}
