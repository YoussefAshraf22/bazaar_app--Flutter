import 'package:bazaar_app/model/categories_list_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesList extends StatelessWidget {
  CategoriesModel model;
  CategoriesList({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SizedBox(
            height: 150,
            child: InkWell(
              onTap: model.onTap,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  model.img,
                ),
                radius: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Text(
                    model.categoryName,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
