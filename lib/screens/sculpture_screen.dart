import 'package:bazaar_app/model/item_componet_model.dart';
import 'package:bazaar_app/view/category_view.dart';
import 'package:bazaar_app/widgets/header.dart';
import 'package:bazaar_app/widgets/items_components.dart';
import 'package:bazaar_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SculptureScreen extends StatelessWidget {
  const SculptureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemComponentModel> component = [
      ItemComponentModel(
          categoryName: 'Sculpture.jpg',
          categoryImg: 'sculpture.jpg',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
    ];
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderWidget(),
            SearchWidget(),
            SizedBox(height: 150, child: CategoryView()),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, mainAxisExtent: 250),
              itemBuilder: (context, index) =>
                  ItemComponents(model: component[index]),
              itemCount: component.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            )
          ]),
        ),
      ),
    );
  }
}
