import 'package:bazaar_app/view/accessories_component_view.dart';
import 'package:bazaar_app/view/category_view.dart';
import 'package:bazaar_app/widgets/header.dart';
import 'package:bazaar_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class  AccessoriesScreen extends StatelessWidget {
  const  AccessoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderWidget(),
            SearchWidget(),
            SizedBox(height: 150, child: CategoryView()),
            AccessoriesComponentView()
          ]),
        ),
      ),
    );
  }
}
