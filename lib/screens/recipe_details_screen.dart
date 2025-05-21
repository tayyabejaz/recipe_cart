import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60), // for top buttons space
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/pasta.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Creamy Pasta",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "By Sana Khan",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 24),
                  _sectionHeader("Ingredients"),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/black_pepper.png',
                        height: 60,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "Black Pepper G.",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("160 g", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _sectionHeader("Description"),
                  const SizedBox(height: 8),
                  Text(
                    "Black Pepper, known scientifically as Piper Nigrum, is a common spice made from dried peppercorns. It is commonly used in cooking.",
                    style: TextStyle(color: Colors.black87, height: 1.5),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Nutritions"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text("100gr"),
                        ),
                        const Icon(Icons.chevron_right, color: Colors.black),
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Review"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        5,
                            (index) => Icon(Icons.star, color: Colors.orange, size: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80), // space for button
                ],
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.share, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              // Handle add to cart
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF5C2E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                Tex
              ),
            ),
            child: Text(
              'Add Ingredients To Cart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
          TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Icon(Icons.keyboard_arrow_down),
      ],
    );
  }
}
