import 'package:flutter/material.dart';

// Contact page with the shop details and the social media buttons.
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Talk to us',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Call ahead for large orders, or drop by the shop in Kota '
            'Samarahan.',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 16),
          const Card(
            child: ListTile(
              leading: Icon(Icons.place, color: Colors.deepOrange),
              title: Text('Store address'),
              subtitle: Text(
                'Lot 128, Jalan Datuk Mohammad Musa, 94300 Kota Samarahan, '
                'Sarawak',
              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.call, color: Colors.deepOrange),
              title: Text('Phone'),
              subtitle: Text('+60 82 555 128'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.mail, color: Colors.deepOrange),
              title: Text('Email'),
              subtitle: Text('hello@wowpizza.my'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.schedule, color: Colors.deepOrange),
              title: Text('Opening hours'),
              subtitle: Text(
                'Monday to Thursday: 11:00 AM - 10:00 PM\n'
                'Friday to Sunday: 11:00 AM - 11:30 PM',
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Follow us',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.alternate_email, color: Colors.blue),
                onPressed: () {
                  Navigator.pushNamed(context, '/twitter');
                },
              ),
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.blue),
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
