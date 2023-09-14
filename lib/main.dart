import 'package:bazaar_app/navigation/bottomNav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BazaarApp());
}

class BazaarApp extends StatelessWidget {
  const BazaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Bazaar App',
      home: const BottomNav(),
    );
  }
}
