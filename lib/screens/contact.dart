import 'package:flutter/material.dart';

// Contact page with the shop details and the social media buttons.
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Same colours as the home page, so both pages look like one app.
    const dark = Color.fromARGB(255, 20, 34, 46);
    const cardColor = Color.fromARGB(255, 32, 50, 68);
    const lightText = Color.fromARGB(255, 216, 222, 228);
    const red = Color.fromARGB(255, 180, 20, 20);
    const cardTitle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    const cardText = TextStyle(fontSize: 14, color: lightText);

    return Scaffold(
      backgroundColor: dark,
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: dark,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Talk to us',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: red,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Call ahead for large orders, or drop by the shop in Kota '
            'Samarahan.',
            style: TextStyle(fontSize: 14, color: lightText),
          ),
          const SizedBox(height: 16),
          const Card(
            color: cardColor,
            child: ListTile(
              leading: Icon(Icons.place, color: red),
              title: Text('Store address', style: cardTitle),
              subtitle: Text(
                'Lot 128, Jalan Datuk Mohammad Musa, 94300 Kota Samarahan, '
                'Sarawak',
                style: cardText,
              ),
            ),
          ),
          const Card(
            color: cardColor,
            child: ListTile(
              leading: Icon(Icons.call, color: red),
              title: Text('Phone', style: cardTitle),
              subtitle: Text('+60 82 555 128', style: cardText),
            ),
          ),
          const Card(
            color: cardColor,
            child: ListTile(
              leading: Icon(Icons.mail, color: red),
              title: Text('Email', style: cardTitle),
              subtitle: Text('hello@wowpizza.my', style: cardText),
            ),
          ),
          const Card(
            color: cardColor,
            child: ListTile(
              leading: Icon(Icons.schedule, color: red),
              title: Text('Opening hours', style: cardTitle),
              subtitle: Text(
                'Monday to Thursday: 11:00 AM - 10:00 PM\n'
                'Friday to Sunday: 11:00 AM - 11:30 PM',
                style: cardText,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Follow us',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              IconButton(
                iconSize: 36,
                icon: const Icon(
                  Icons.alternate_email,
                  color: Color.fromARGB(255, 0, 89, 255),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/twitter');
                },
              ),
              IconButton(
                iconSize: 36,
                icon: const Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 3, 37, 230),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/facebook');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
