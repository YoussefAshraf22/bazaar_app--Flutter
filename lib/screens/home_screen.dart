import 'package:bazaar_app/navigation/bottomNav.dart';
import 'package:bazaar_app/view/category_view.dart';
import 'package:bazaar_app/view/item_components_view.dart';
import 'package:bazaar_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(
                      'downtown 48st',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                SearchWidget(),
                SizedBox(height: 150, child: CategoryView()),
                ItemComponentView()
              ]),
        ),
        // bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
