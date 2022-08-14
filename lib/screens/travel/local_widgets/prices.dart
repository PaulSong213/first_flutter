import 'package:flutter/material.dart';
import './prices_card.dart';

class Prices extends StatelessWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PricesCard(),
          ],
        ));
  }
}
