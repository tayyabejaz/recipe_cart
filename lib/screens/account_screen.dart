import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildProfileSection(),
          SizedBox(height: 16),
          _buildAccountOption(
            icon: Icons.shopping_bag_outlined,
            title: "Orders",
            onTap: () => Navigator.pushNamed(context, '/orders'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.person_outline,
            title: "My Details",
            onTap: () => Navigator.pushNamed(context, '/account-details'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.location_on_outlined,
            title: "Delivery Address",
            onTap: () => Navigator.pushNamed(context, '/addresses'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.payment_outlined,
            title: "Payment Methods",
            onTap: () => Navigator.pushNamed(context, '/payment-methods'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.card_giftcard_outlined,
            title: "Promo Codes",
            onTap: () => Navigator.pushNamed(context, '/promo-codes'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.notifications_outlined,
            title: "Notifications",
            onTap: () => Navigator.pushNamed(context, '/notifications'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.help_outline,
            title: "Help & Support",
            onTap: () => Navigator.pushNamed(context, '/help-support'),
          ),
          Divider(),
          _buildAccountOption(
            icon: Icons.info_outline,
            title: "About",
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
          Divider(),
          SizedBox(height: 24),
          _buildLogoutButton(context),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildProfileSection() {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/images/placeholder.png"),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Sufian Akram",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit, color: Color(0xFF53B175)),
                    onPressed: () {},
                  ),
                ],
              ),
              Text(
                "sufianakram07@gmail.com",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAccountOption(
      {required IconData icon,
        required String title,
        required VoidCallback onTap}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(0.1),
        child: Icon(icon, color: Color(0xFF181725)),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () => _logout(context),
        child: Text("Log Out", style: TextStyle(fontSize: 16)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          side: BorderSide(color: Colors.red),
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Log Out"),
        content: Text("Are you sure you want to log out?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/signin');
            },
            child: Text("Log Out", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 4, // Account Screen
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/explore');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/my-cart');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/favorites');
            break;
          case 4:
            Navigator.pushReplacementNamed(context, '/account');
            break;
        }
      },
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
      ],
    );
  }
}
