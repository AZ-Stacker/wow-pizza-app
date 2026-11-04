import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WOW Pizza')),
      body: const Center(child: Text('WOW Pizza - TODO')),
    );
  }
}
