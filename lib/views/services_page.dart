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
            // Profile Card Layout
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Bryan Emmanuel, Master Locksmith',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                             
                              SizedBox(width: 8),
                              Text('bryan@gmail.com'),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            children: [
                              
                              SizedBox(width: 8),
                              Text('+63 900 000 0000'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Chat Bubble UI (step 9): Container with padding, margin, rounded borders, no icons
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text("Hi, How are you"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text("Hello, Im fine thank you"),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            // Flexible Column for Services
            const Text(
              'Our Services',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Residential Locksmith'),
                    
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Commercial Locksmith'),
                  
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Car Lockout Services'),
                    
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          // Service Categories Grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: [
              ServiceCategoryCard(title: 'Installation', icon: Icons.build),
              ServiceCategoryCard(title: 'Repair', icon: Icons.handyman),
              ServiceCategoryCard(title: 'Emergency', icon: Icons.emergency),
              ServiceCategoryCard(title: 'Key Duplication', icon: Icons.key),
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
