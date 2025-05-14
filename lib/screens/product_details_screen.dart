import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/200'),
            SizedBox(height: 16),
            Text("Product Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("\$4.99", style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 16),
            Text("Product Detail", style: TextStyle(fontSize: 18)),
            Text("Detailed description about the product."),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Add to Cart"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            )
          ],
        ),
      ),
    );
  }
}
