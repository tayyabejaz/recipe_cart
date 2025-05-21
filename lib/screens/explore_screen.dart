import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final List<Map<String, String>> allCategories = [
    {"title": "Fruits & Vegetables", "image": "assets/images/explore_screen/fruits.png"},
    {"title": "Cooking Oil & Ghee", "image": "assets/images/explore_screen/cooking_oil.png"},
    {"title": "Meat & Fish", "image": "assets/images/explore_screen/meat.png"},
    {"title": "Bakery & Snacks", "image": "assets/images/explore_screen/bakery.png"},
    {"title": "Dairy & Eggs", "image": "assets/images/explore_screen/dairy.png"},
    {"title": "Beverages", "image": "assets/images/explore_screen/beverages.png"},
  ];

  List<Map<String, String>> filteredCategories = [];
  String searchQuery = "";
  final List<Color> backgroundColors = [
    Color(0xFFFFF3E0),
    Color(0xFFE3F2FD),
    Color(0xFFE8F5E9),
    Color(0xFFFFEBEE),
    Color(0xFFF3E5F5),
    Color(0xFFFFF8E1),
  ];

  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    filteredCategories = allCategories;
  }

  void _searchCategories(String query) {
    setState(() {
      searchQuery = query;
      filteredCategories = allCategories
          .where((category) =>
          category['title']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Color _getBackgroundColor(int index) {
    return backgroundColors[index % backgroundColors.length];
  }

  void _onBottomNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
      // Current Screen (Explore)
        break;
      case 2:
        Navigator.pushNamed(context, '/my-cart');
        break;
      case 3:
        Navigator.pushNamed(context, '/favorites');
        break;
      case 4:
        Navigator.pushNamed(context, '/account');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Explore Categories",
          style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.deepOrange),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 16),
            Expanded(
              child: filteredCategories.isEmpty
                  ? Center(
                child: Text(
                  "No categories found.",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              )
                  : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 4 / 3,
                ),
                itemCount: filteredCategories.length,
                itemBuilder: (context, index) {
                  return _buildCategoryCard(
                    filteredCategories[index],
                    context,
                    _getBackgroundColor(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
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
      onChanged: _searchCategories,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: "Search Categories",
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
      Map<String, String> category, BuildContext context, Color backgroundColor) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Selected: ${category['title']}")),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  category['image']!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              category['title']!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
