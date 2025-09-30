
import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'views/services_page.dart';
import 'views/contacts_page.dart';

// Helper widget to allow navigation to a specific tab in MainNavigation
class MainNavigationInitialTab extends StatelessWidget {
  final int tabIndex;
  const MainNavigationInitialTab({Key? key, required this.tabIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainNavigation(initialTab: tabIndex);
  }
}

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
  final int initialTab;
  const MainNavigation({super.key, this.initialTab = 0});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialTab;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomePage(onViewServices: () => _onItemTapped(1)),
      ServicesPage(),
      ContactsPage(),
    ];
    return Scaffold(
      body: _pages[_selectedIndex],
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
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
        ],
      ),
    );
  }
}
