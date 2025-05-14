import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Products"),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        children: [
          CategoryCard(title: "Fresh Fruits & Vegetable"),
          CategoryCard(title: "Cooking Oil & Ghee"),
          CategoryCard(title: "Meat & Fish"),
          CategoryCard(title: "Bakery & Snacks"),
          CategoryCard(title: "Dairy & Eggs"),
          CategoryCard(title: "Beverages"),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;

  const CategoryCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(child: Text(title)),
    );
  }
}
