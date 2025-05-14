import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Sufian Akram"),
            subtitle: Text("sufianakram07@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("Orders"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Details"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Delivery Address"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Payment Methods"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            onTap: () {
              // Logout logic here
            },
          ),
        ],
      ),
    );
  }
}
