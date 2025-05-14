import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"name": "Diet Coke", "price": "1.99", "image": "https://via.placeholder.com/150"},
    {"name": "Sprite Can", "price": "1.50", "image": "https://via.placeholder.com/150"},
    {"name": "Apple & Grape Juice", "price": "5.99", "image": "https://via.placeholder.com/150"},
    {"name": "Orange Juice", "price": "5.99", "image": "https://via.placeholder.com/150"},
    {"name": "Coca Cola Can", "price": "4.99", "image": "https://via.placeholder.com/150"},
    {"name": "Pepsi Can", "price": "4.99", "image": "https://via.placeholder.com/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beverages"),
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              // Sort functionality can be added here
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.75,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: products[index]['name']!,
            price: products[index]['price']!,
            image: products[index]['image']!,
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const ProductCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product-details');
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("325ml", style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$$price", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), backgroundColor: Colors.deepOrange,
                        ),
                        onPressed: () {
                          // Add to cart logic here
                        },
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
