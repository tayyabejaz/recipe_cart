import 'package:flutter/material.dart';
import 'package:recipe_cart/routes/app_routes.dart';
import 'package:recipe_cart/screens/account_screen.dart';
import 'package:recipe_cart/screens/explore_screen.dart';
import 'package:recipe_cart/screens/favorites_screen.dart';
import 'package:recipe_cart/screens/my_cart_screen.dart';
import 'package:recipe_cart/widgets/toast_util.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Cart"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Search Store",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Recommendation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          // Product List
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductCard(title: "Creamy Pasta", price: "4.99"),
                ProductCard(title: "Macarons", price: "2.99"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if(index == 0){
            // ToastUtil.showInfoToast("Shop Pressed");
            Navigator.pushNamed(context, AppRoutes.home);
          }
          else if(index== 1){
            // ToastUtil.showInfoToast("Explore Pressed");
            Navigator.pushNamed(context, AppRoutes.explore);
          }
          else if(index == 2){
            // ToastUtil.showInfoToast("Cart Pressed");
            Navigator.pushNamed(context, AppRoutes.myCart);
          }
          else if(index == 3){
            // ToastUtil.showInfoToast("Favourite Pressed");
            Navigator.pushNamed(context, AppRoutes.favorites);
          }
          else if(index == 4){
            // ToastUtil.showInfoToast("Account Pressed");
            Navigator.pushNamed(context, AppRoutes.account);
          }

        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String price;

  const ProductCard({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 150,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 150,
            color: Colors.grey[200],
            child: Icon(Icons.fastfood, size: 50),
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text("\$$price"),
        ],
      ),
    );
  }
}
