import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Services')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top: Residential and Automotive
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFB3D8FD), // light blue
                    height: 60,
                    alignment: Alignment.center,
                    child: const Text(
                      'Residential',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFC8E6C9), // light green
                    height: 60,
                    alignment: Alignment.center,
                    child: const Text(
                      'Automotive',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Our Services',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Residential locksmith services list
            Card(
              child: Column(
                children: const [
                  ListTile(
                    title: Text('Lock Installation'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Lock Repair'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Home Lockout Assistance'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Rekeying Services'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Smart Lock Setup'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Automotive locksmith services grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                ServiceCategoryCard(title: 'Car Key Replacement', icon: Icons.vpn_key),
                ServiceCategoryCard(title: 'Ignition Repair', icon: Icons.settings),
                ServiceCategoryCard(title: 'Car Lockout', icon: Icons.directions_car),
                ServiceCategoryCard(title: 'Transponder Key Programming', icon: Icons.phonelink_lock),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const ServiceCategoryCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
