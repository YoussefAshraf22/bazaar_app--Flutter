import 'package:bazaar_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text(
        'Cart',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 60,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
            selectedIcon: Icon(Icons.shopping_cart),
          ),
          NavigationDestination(
            icon: Icon(Icons.manage_accounts_rounded),
            label: 'Profile',
            selectedIcon: Icon(Icons.manage_accounts),
          )
        ],
      ),
    );
  }
}
