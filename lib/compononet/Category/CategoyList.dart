import 'package:ex/compononet/Category/CategoryCard.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../screens/addpage.dart';
import '../../screens/body building.dart';
import '../../screens/diet-system.dart';
import '../../screens/food system.dart';

List pages = [
  // the name of page that you want to go to it
  BodyBuilding(),
  DietSystem(),
  FoodSystem(),
  AddPage(),
  // Home(),
];

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => CategoryCard(
              product: products[index],
              onmyTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pages[index]));
              },
              pageName: "",
            ));
  }
}
