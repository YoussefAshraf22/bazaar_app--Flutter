import 'package:bazaar_app/model/categories_list_model.dart';
import 'package:bazaar_app/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> category = [
      CategoriesModel(categoryName: 'Craft', img: 'craft.png', onTap: () {}),
      CategoriesModel(
          categoryName: 'Painting', img: 'painting.png', onTap: () {}),
      CategoriesModel(
          categoryName: 'Accessorys ', img: 'accessories.png', onTap: () {}),
      CategoriesModel(
          categoryName: 'Sculpture ', img: 'sculpture.jpg', onTap: () {}),
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
