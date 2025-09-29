import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  final void Function()? onViewServices;
  const HomePage({Key? key, this.onViewServices}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.lock, size: 32),
            SizedBox(width: 8),
            Text('Locksmithy'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section (Stack)
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.3),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text('Call Locksmith', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Balanced Row: Installation, Repair, Emergency
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                     
                      SizedBox(height: 0),
                      Text('Installation', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                
                      SizedBox(height: 0),
                      Text('Repair', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                  
                      SizedBox(height: 0),
                      Text('Emergency', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Step 2
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 220,
                  child: CustomButton(
                    label: 'View Services',
                    onPressed: widget.onViewServices ?? () {},
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 220,
                  child: CustomButton(
                    label: 'Contact Us',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Service Guarantee Highlight
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.yellow[300],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 207, 196, 255),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  '24/7 Emergency Locksmith',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),


            // Responsive Row with Expanded
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.blue[100],
                    child: const Center(child: Text('Residential')),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.green[100],
                    child: const Center(child: Text('Automotive')),
                  ),
                ),
              ],
            ),


            // ...existing code...



          ],
        ),
      ),
    );
  }
}
