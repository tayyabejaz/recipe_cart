import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Details"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/200'),
            SizedBox(height: 16),
            Text("Recipe Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("By Chef Name"),
            SizedBox(height: 16),
            Text("Ingredients", style: TextStyle(fontSize: 18)),
            Text("Ingredient details here"),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Add Ingredients to Cart"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            )
          ],
        ),
      ),
    );
  }
}
