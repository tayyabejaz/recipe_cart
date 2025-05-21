import 'package:flutter/material.dart';
import 'package:recipe_cart/routes/app_routes.dart';
import 'package:recipe_cart/screens/recipe_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recommendedProducts = [
    {"title": "Creamy Pasta", "image": "assets/images/pasta.jpg", "price": "4.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
    {"title": "Macarons", "image": "assets/images/macrons.jpg", "price": "3.99"},
  ];

  final List<Map<String, String>> breakfastProducts = [
    {"title": "Pancakes", "image": "assets/images/breakfast_first.jpg", "price": "5.49"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
    {"title": "Omelette", "image": "assets/images/breakfast_second.jpg", "price": "2.99"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart, color: Colors.deepOrange),
            SizedBox(width: 8),
            Text(
              "Recipe Cart",
              style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications, color: Colors.grey),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              _buildSearchBar(),
              SizedBox(height: 16),
              _buildPromotionalBanner(),
              SizedBox(height: 16),
              _buildSectionTitle("Recommendation", () {}),
              _buildHorizontalList(recommendedProducts),
              SizedBox(height: 16),
              _buildSectionTitle("Breakfast", () {}),
              _buildHorizontalList(breakfastProducts),
              SizedBox(height: 16),
              _buildSectionTitle("Lunch", () {}),
              _buildHorizontalList(breakfastProducts),
              SizedBox(height: 16),
              _buildSectionTitle("Recommendation", () {}),
              _buildHorizontalList(recommendedProducts),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: "Search Store",
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      height: 150,
      child: PageView(
        children: [
          _buildBannerItem("assets/images/banner.png", "Fresh Vegetables", "Up to 40% OFF"),
          _buildBannerItem("assets/images/banner.png", "Delicious Recipes", "Try Now"),
        ],
      ),
    );
  }

  Widget _buildBannerItem(String imageUrl, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.black54, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 14)),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, VoidCallback onSeeAll) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: onSeeAll,
          child: Text("See all", style: TextStyle(color: Colors.deepOrange)),
        ),
      ],
    );
  }

  Widget _buildHorizontalList(List<Map<String, String>> products) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailsScreen(), // <-- Navigate on tap
                ),
              );
            },
            child: _buildProductCard(products[index]),
          );
        },
      ),
    );
  }


  Widget _buildProductCard(Map<String, String> product) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                product['image']!,
                width: double.infinity,
                fit: BoxFit.cover, // Ensures the image fills the width of the card
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product['title']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text("\$${product['price']}"),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
