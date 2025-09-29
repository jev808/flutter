import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'views/services_page.dart';

void main() {
  runApp(const LocksmithyApp());
}

class ThreeTextRow extends StatelessWidget {
  const ThreeTextRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('Text 1'),
        Text('Text 2'),
        Text('Text 3'),
      ],
    );
  }
}

class LocksmithyApp extends StatelessWidget {
  const LocksmithyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locksmithy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainNavigation(),
        '/services': (context) => ServicesPage(),
        '/step1': (context) => Scaffold(
              appBar: AppBar(title: const Text('Second Activity - Step 1')),
              body: Center(child: ThreeTextRow()),
            ),
      },
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? HomePage(onViewServices: () => _onItemTapped(1))
          : ServicesPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Services',
          ),
        ],
      ),
    );
  }
}
