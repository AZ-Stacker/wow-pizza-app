import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        20,
        34,
        46,
      ), // background color
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo / pizza image (falls back to an icon if no image yet)
                Image.asset(
                  'assets/images/pizza.png',
                  height: 180,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.local_pizza,
                    size: 140,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'WOW Pizza',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 180, 20, 20),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Fresh, hot and delivered fast!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 251, 0, 0),
                  ),
                ),
                const SizedBox(height: 32),

                // Three OutlinedButtons using named routes
                _menuButton(
                  context,
                  Icons.restaurant_menu,
                  'Our Menu',
                  '/menu',
                ),
                const SizedBox(height: 12),
                _menuButton(context, Icons.info_outline, 'About Us', '/about'),
                const SizedBox(height: 12),
                _menuButton(context, Icons.phone, 'Contact Us', '/contact'),
                const SizedBox(height: 32),

                // Social icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 40,
                      color: const Color.fromARGB(255, 0, 89, 255),
                      tooltip: 'Twitter / X',
                      icon: const Icon(Icons.public),
                      onPressed: () => Navigator.pushNamed(context, '/twitter'),
                    ),
                    const SizedBox(width: 24),
                    IconButton(
                      iconSize: 40,
                      color: const Color.fromARGB(255, 3, 37, 230),
                      tooltip: 'Facebook',
                      icon: const Icon(Icons.facebook),
                      onPressed: () =>
                          Navigator.pushNamed(context, '/facebook'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context,
    IconData icon,
    String label,
    String route,
  ) {
    return SizedBox(
      width: 260,
      child: OutlinedButton.icon(
        icon: Icon(icon),
        label: Text(label),
        onPressed: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}
