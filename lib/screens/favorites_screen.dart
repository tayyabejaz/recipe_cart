import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favorites = ["Diet Coke", "Sprite Can", "Apple & Grape Juice"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorites")),
      body: ListView(
        children: favorites.map((item) => ListTile(title: Text(item))).toList(),
      ),
    );
  }
}
