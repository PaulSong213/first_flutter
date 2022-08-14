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
            CategoryCard("Flight", Colors.blue.shade400, Icons.flight_sharp),
            CategoryCard(
                "Schedule", Colors.green.shade400, Icons.calendar_today),
            CategoryCard("Promo", Colors.indigoAccent.shade200, Icons.padding),
            CategoryCard("Perks", Colors.brown, Icons.all_out_sharp),
          ],
        ));
  }
}
