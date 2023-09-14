import 'package:bazaar_app/model/item_componet_model.dart';
import 'package:bazaar_app/widgets/items_components.dart';
import 'package:flutter/material.dart';

class CraftComponentView extends StatelessWidget {
  const CraftComponentView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemComponentModel> component = [
      ItemComponentModel(
          categoryName: 'Wall Tablo',
          categoryImg: 'walltablo.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo 2',
          categoryImg: 'walltablo2.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo',
          categoryImg: 'walltablo.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo 2',
          categoryImg: 'walltablo2.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo',
          categoryImg: 'walltablo.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo 2',
          categoryImg: 'walltablo2.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo',
          categoryImg: 'walltablo.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Wall Tablo 2',
          categoryImg: 'walltablo2.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 20, mainAxisExtent: 250),
      itemBuilder: (context, index) =>
          ItemComponents(model: component[index]),
      itemCount: component.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
