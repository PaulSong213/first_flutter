import 'package:flutter/material.dart';
import './category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
          ],
        ));
  }
}
