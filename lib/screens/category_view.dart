import 'package:bazaar_app/model/categories_list_model.dart';
import 'package:bazaar_app/screens/accessories_screen.dart';
import 'package:bazaar_app/screens/craft_screen.dart';
import 'package:bazaar_app/screens/painting_screen.dart';
import 'package:bazaar_app/screens/sculpture_screen.dart';
import 'package:bazaar_app/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> category = [
      CategoriesModel(
          categoryName: 'Craft',
          img: 'craft.png',
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CraftScreen()),
            );
          }),
      CategoriesModel(
          categoryName: 'Painting',
          img: 'painting.png',
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaintingScreen(),
                ));
          }),
      CategoriesModel(
          categoryName: 'Accessories ',
          img: 'accessories.png',
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccessoriesScreen(),
                ));
          }),
      CategoriesModel(
          categoryName: 'Sculpture ',
          img: 'sculpture.jpg',
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SculptureScreen(),
                ));
          }),
    ];

    return ListView.builder(
      itemBuilder: (context, index) => CategoriesList(model: category[index]),
      itemCount: category.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
    );
  }
}
