import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pizza Menu")),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(),
            title: Text("Pepperoni Pizza"),
            subtitle: Text("RM 25.90"),
          ),

          ListTile(
            leading: CircleAvatar(),
            title: Text("Hawaiian Pizza"),
            subtitle: Text("RM 22.90"),
          ),

          ListTile(
            leading: CircleAvatar(),
            title: Text("BBQ Chicken Pizza"),
            subtitle: Text("RM 29.90"),
          ),
        ],
      ),
    );
  }
}
